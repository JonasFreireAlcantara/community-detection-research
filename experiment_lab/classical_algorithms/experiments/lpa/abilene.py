import os

from common.utils.node_utils import NodeUtils
from classical_algorithms.algorithms.label_propagation import LabelPropagationAlgorithm
from common.constants import resources_constants
from common.constants.graphs_constants import GraphsConstants
from common.parser.gml_parser import GMLParser
from visualization.plot.folium.folium_plot import FoliumPlot
from visualization.common.folium.folium_builder import FoliumBuilder
from visualization.utils.folium.folium_utils import FoliumUtils


if __name__ == '__main__':
    g_path = os.path.join(resources_constants.TOPOLOGIES_PATH, 'Abilene.gml')

    gml_parser = GMLParser(g_path)
    g = gml_parser.parse()

    NodeUtils.multiply_all_nodes_attribute_value_by_factor(g, GraphsConstants.LONGITUDE, 1)
    NodeUtils.multiply_all_nodes_attribute_value_by_factor(g, GraphsConstants.LATITUDE, 1)

    lpa = LabelPropagationAlgorithm()
    communities = lpa.detect_community(g)

    NodeUtils.set_communities_ids(g, communities)

    m = FoliumBuilder.build_folium_map(g, zoom_level=2.5)
    FoliumUtils.add_nodes_to_map(m, g)
    FoliumUtils.add_edges_to_map(m, g)

    FoliumPlot.open_map_with_browser(m)
