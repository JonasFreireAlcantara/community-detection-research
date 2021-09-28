import os

from common.constants.graphs_constants import GraphsConstants
from common.log import logger
from common.loader.gml_loader import GMLLoader
from common.utils.graph_utils import GraphUtils
from common.utils.resources_utils import ResourcesUtils
from common.writer.metric_writer import MetricWriter
from visualization.common.folium.folium_builder import FoliumBuilder
from visualization.plot.folium.folium_plot import FoliumPlot
from visualization.utils.folium.folium_utils import FoliumUtils


class PlatformClassicalRunner:

    def __init__(self, source_path, target_path, algorithm_class, metric_classes, **algorithm_kwargs):
        self.source_path = source_path
        self.target_path = target_path
        self.algorithm_class = algorithm_class
        self.algorithm_kwargs = algorithm_kwargs
        self.metric_classes = metric_classes
        self.logger = logger.get_logger()
        self.metrics = list()

    def _compute_metrics(self, graph, communities):
        results = [
            (GraphsConstants.RESILIENCE_ONE_LINK, graph.graph.get(GraphsConstants.RESILIENCE_ONE_LINK, '---')),
            (GraphsConstants.RESILIENCE_TWO_LINK, graph.graph.get(GraphsConstants.RESILIENCE_TWO_LINK, '---'))
        ]
        for metric_class in self.metric_classes:
            result = metric_class.compute(graph, communities)
            results.append((metric_class.__name__, result))
        return results

    def _apply_algorithm_compute_metric_and_generate_map(self, source, target):
        g = GMLLoader(source).parse()
        g = GraphUtils.merge_multiple_edges(g)
        g = GraphUtils.remove_orphaned_nodes(g)
        g = GraphUtils.set_position_to_center_when_position_is_absent(g)
        g = GraphUtils.move_position_of_overlapping_nodes(g)

        algorithm = self.algorithm_class(**self.algorithm_kwargs)
        communities = list(algorithm.detect_community(g))

        network_name = os.path.basename(source).split('.')[0]
        metrics_result = self._compute_metrics(g, communities)
        self.metrics.append([network_name, metrics_result])

        GraphUtils.set_communities_labels(g, communities)
        m = FoliumBuilder.build_folium_map(g, zoom_level=2.5)
        FoliumUtils.add_nodes_to_map(m, g)
        FoliumUtils.add_edges_to_map(m, g)

        filename = f'{os.path.join(target, network_name)}.html'
        FoliumPlot.open_map_with_browser(
            m, filename=filename, open_browser=False)

    def create_path(self, path):
        try:
            os.makedirs(path)
        except FileExistsError:
            self.logger.warn(f'The directory {path} already exists')
        else:
            self.logger.info(f'Creating directory {path} ...')

    def save_metric(self):
        metric_writer = MetricWriter(self.metrics, os.path.join(self.target_path, 'metrics_results.csv'))
        metric_writer.write()

    def run(self):
        path_names = ResourcesUtils.get_list_of_topologies_path(self.source_path)

        self.create_path(self.target_path)
        for path in path_names:
            self._apply_algorithm_compute_metric_and_generate_map(source=path, target=self.target_path)
