import os

from common.utils.node_utils import NodeUtils
from classical_algorithms.algorithms.label_propagation import LabelPropagationAlgorithm
from common.constants.graphs_constants import GraphsConstants
from common.constants.resources_constants import ResourcesConstants
from common.utils.resources_utils import ResourcesUtils
from common.loader.gml_loader import GMLLoader
from visualization.plot.folium.folium_plot import FoliumPlot
from visualization.common.folium.folium_builder import FoliumBuilder
from visualization.utils.folium.folium_utils import FoliumUtils


def _apply_lpa_and_plot_graph(gml_path, target_dir):
    g = GMLLoader(gml_path).parse()

    NodeUtils.set_position_to_center_when_position_is_absent(g)

    lpa = LabelPropagationAlgorithm()
    communities = lpa.detect_community(g)

    NodeUtils.set_communities_ids(g, communities)

    m = FoliumBuilder.build_folium_map(g, zoom_level=2.5)
    FoliumUtils.add_nodes_to_map(m, g)
    FoliumUtils.add_edges_to_map(m, g)

    filename = f'{os.path.join(target_dir, os.path.basename(gml_path).split(".")[0])}.html'
    FoliumPlot.open_map_with_browser(
        m, filename=filename, open_browser=False)


if __name__ == '__main__':
    path_names = ResourcesUtils.get_list_of_topologies_path(
        os.path.join(ResourcesConstants.DATASET_PATH, 'usa_topologies'))

    for path in path_names:
        _apply_lpa_and_plot_graph(path, '/home/jonas/Desktop/usa_topologies')
