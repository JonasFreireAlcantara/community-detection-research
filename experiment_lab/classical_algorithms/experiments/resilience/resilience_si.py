import os

from common.constants.graphs_constants import GraphsConstants
from common.constants.resources_constants import ResourcesConstants
from common.loader.jonas_si_loader import JonasSILoader
from common.utils.graph_utils import GraphUtils
from common.utils.resources_utils import ResourcesUtils
from common.utils.topologies_picker_utils import TopologiesPickerUtils
from common.writer.gml_writer import GMLWriter
from visualization.common.folium.folium_builder import FoliumBuilder
from visualization.plot.folium.folium_plot import FoliumPlot
from visualization.utils.folium.folium_utils import FoliumUtils


class ResilienceSI:

    def __init__(self, gml_path, file_input, target_directory, file_prefix=0):
        self.gml_path = gml_path
        self.file_input = file_input
        self.target_directory = target_directory
        self.file_prefix = file_prefix

    def load_and_save_gml_html(self, save_html=False):
        graph_list = list()
        lines = self._load_file_lines()
        for line in lines:
            graph = JonasSILoader(self.gml_path, line).parse()
            graph = GraphUtils.merge_multiple_edges(graph)
            graph = GraphUtils.remove_orphaned_nodes(graph)
            graph_list.append(graph)
        self._save_gml_to_directory(graph_list)
        if save_html:
            self._save_html_to_directory(graph_list)

    def _save_gml_to_directory(self, graph_list):
        ResourcesUtils.create_path(self.target_directory)
        counter = 0
        for graph in graph_list:
            GMLWriter(graph, os.path.join(self.target_directory, f'{self.file_prefix}_{counter}.gml')).write()
            counter += 1

    def _save_html_to_directory(self, graph_list):
        counter = 0
        for graph in graph_list:
            communities = [graph.nodes]
            GraphUtils.set_communities_labels(graph, communities)
            map = FoliumBuilder.build_folium_map(graph, zoom_level=2.5)
            FoliumUtils.add_nodes_to_map(map, graph)
            FoliumUtils.add_edges_to_map(map, graph)

            filename = f'{os.path.join(self.target_directory, f"{self.file_prefix}_{counter}.html")}'
            FoliumPlot.open_map_with_browser(
                map, filename=filename, open_browser=False)
            counter += 1

    def _load_file_lines(self):
        with open(self.file_input, 'r') as f:
            return f.readlines()


if __name__ == '__main__':
    gml_path = os.path.join(ResourcesConstants.ARNES_GML, 'arnes.gml')
    target_directory = '/home/jonas/Desktop/jonas_si_gml'

    TopologiesPickerUtils.add_attribute_to_gml_file(gml_path, GraphsConstants.MULTIGRAPH, '1')

    counter = 0
    for file in os.listdir(ResourcesConstants.ARNES_RESILIENCE)[0]:
        file_input = os.path.join(ResourcesConstants.ARNES_RESILIENCE, file)
        resilience_si = ResilienceSI(gml_path, file_input, target_directory, file_prefix=counter)
        resilience_si.load_and_save_gml_html()
        counter += 1

