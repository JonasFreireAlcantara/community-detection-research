import os

from common.utils.graph_utils import GraphUtils
from common.constants import resources_constants
from common.constants.graphs_constants import GraphsConstants
from common.loader.gml_loader import GMLLoader
from visualization.plot.folium.folium_plot import FoliumPlot
from visualization.utils.folium.folium_utils import FoliumUtils
from visualization.common.folium.folium_builder import FoliumBuilder


if __name__ == '__main__':
    # g_path = os.path.join(resources_constants.TOPOLOGIES_PATH, 'cpAbvt.gml')
    g_path = '/home/jonas/Desktop/jonas_si_gml/2_0.gml'

    gml_parser = GMLLoader(g_path)
    g = gml_parser.parse()

    # GraphUtils.multiply_all_nodes_attribute_value_by_factor(g, GraphsConstants.LONGITUDE, 1)
    # GraphUtils.multiply_all_nodes_attribute_value_by_factor(g, GraphsConstants.LATITUDE, 1)
    GraphUtils.set_all_nodes_attribute_value(g, GraphsConstants.COMMUNITY, 0)

    m = FoliumBuilder.build_folium_map(g, zoom_level=2.5)
    FoliumUtils.add_nodes_to_map(m, g)
    FoliumUtils.add_edges_to_map(m, g)

    FoliumPlot.open_map_with_browser(m)
