import random

import folium
from colour import Color

from common.constants.graphs_constants import GraphsConstants


class FoliumUtils:

    @staticmethod
    def _get_range_of_colors(graph):
        communities = set(map(lambda label: graph.nodes[label][GraphsConstants.COMMUNITY], graph.nodes))
        number_of_communities = len(communities)

        return list(Color('blue').range_to(Color('red'), number_of_communities))

    @staticmethod
    def add_node_to_map(folium_map, location, label, hex_color):
        folium.Circle(
            radius=1000,
            location=location,
            popup=label,
            tooltip=label,
            fill=True,
            color=hex_color,
            fill_opacity=1,
        ).add_to(folium_map)

    @staticmethod
    def add_nodes_to_map(folium_map, graph):
        colors = FoliumUtils._get_range_of_colors(graph)
        for label in graph.nodes:
            node = graph.nodes[label]
            location = [node[GraphsConstants.LATITUDE], node[GraphsConstants.LONGITUDE]]
            FoliumUtils.add_node_to_map(
                folium_map, location, label, colors[node[GraphsConstants.COMMUNITY]].get_hex_l())

    @staticmethod
    def add_edge_to_map(folium_map, points, color):
        folium.PolyLine(
            points,
            color=color,
            weight=1.5,
            opacity=0.4
        ).add_to(folium_map)

    @staticmethod
    def add_edges_to_map(folium_map, graph):
        colors = FoliumUtils._get_range_of_colors(graph)
        for source, target in graph.edges:
            source_node = graph.nodes[source]
            source_point = (source_node[GraphsConstants.LATITUDE], source_node[GraphsConstants.LONGITUDE])
            target_node = graph.nodes[target]
            target_point = (target_node[GraphsConstants.LATITUDE], target_node[GraphsConstants.LONGITUDE])
            color = FoliumUtils._get_color_edge(colors, source_node, target_node)
            FoliumUtils.add_edge_to_map(folium_map, [source_point, target_point], color)

    @staticmethod
    def _get_color_edge(colors, first_node, second_node):
        return random.choice([
            colors[first_node[GraphsConstants.COMMUNITY]].get_hex_l(),
            colors[second_node[GraphsConstants.COMMUNITY]].get_hex_l(),
        ])
