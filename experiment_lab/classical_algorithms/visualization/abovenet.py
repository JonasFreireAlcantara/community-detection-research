import os

import folium

from classical_algorithms.common.utils.node_utils import NodeUtils
from common.constants import resources_constants
from common.parser.gml_parser import GMLParser
from visualization.plot.folium.folium_plot import FoliumPlot
from visualization.utils.folium.folium_utils import FoliumUtils
from visualization.common.folium.folium_builder import FoliumBuilder


if __name__ == '__main__':
    g_path = os.path.join(resources_constants.TOPOLOGIES_PATH, 'cpAbvt.gml')

    gml_parser = GMLParser(g_path)
    g = gml_parser.parse()

    NodeUtils.multiply_all_nodes_attribute_value_by_factor(g, 'Longitude', 1)
    NodeUtils.multiply_all_nodes_attribute_value_by_factor(g, 'Latitude', 1)

    m = FoliumBuilder.build_folium_map(g, zoom_level=2.5)
    FoliumUtils.add_nodes_to_map(m, g)
    FoliumUtils.add_edges_to_map(m, g)

    FoliumPlot.open_map_with_browser(m)

    # plot_pyvis.plot_graph(g, barnes_hut=True)
