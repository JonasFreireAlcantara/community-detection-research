import random

import numpy as np

from common.constants.graphs_constants import GraphsConstants
from common.log.logger import get_logger


class GraphUtils:

    @staticmethod
    def add_all_nodes_attribute(graph, attribute, value):
        for node in graph.nodes:
            graph.nodes[node][attribute] = value

    @staticmethod
    def _set_node_attribute_value(graph, node, attribute, value):
        graph.nodes[node][attribute] = value

    @staticmethod
    def set_all_nodes_attribute_value(graph, attribute, value):
        for node in graph.nodes:
            GraphUtils._set_node_attribute_value(graph, node, attribute, value)

    @staticmethod
    def _multiply_node_attribute_value_by_factor(graph, node, attribute, factor):
        graph.nodes[node][attribute] = graph.nodes[node].get(attribute, 0) * factor

    @staticmethod
    def _average_position(graph, nodes):
        longitudes = [graph.nodes[id].get(GraphsConstants.LONGITUDE, np.nan) for id in nodes]
        latitudes = [graph.nodes[id].get(GraphsConstants.LATITUDE, np.nan) for id in nodes]
        if all(np.isnan(longitudes)) or all(np.isnan(latitudes)):
            raise ValueError('All adjacent nodes has not coordinate position.')
        return np.nanmean(longitudes), np.nanmean(latitudes)

    @staticmethod
    def _find_average_position(graph):
        return GraphUtils._average_position(graph, graph.nodes)

    @staticmethod
    def _find_average_position_by_adjacent_nodes(graph, node_id):
        neighbors = list(graph.neighbors(node_id))
        try:
            return GraphUtils._average_position(graph, neighbors)
        except ValueError:
            return GraphUtils._find_average_position(graph)

    @staticmethod
    def set_position_to_center_when_position_is_absent(graph):
        for label in graph.nodes:
            node = graph.nodes[label]
            if GraphUtils._has_not_coordinate(node):
                center_lon, center_lat = GraphUtils._find_average_position_by_adjacent_nodes(graph, label)
                center_lon += (random.random() * 2) - 1
                center_lat += (random.random() * 2) - 1
                node[GraphsConstants.LONGITUDE] = center_lon
                node[GraphsConstants.LATITUDE] = center_lat

    @staticmethod
    def remove_orphaned_nodes(graph):
        for node_id in graph.nodes:
            neighbors = graph.neighbors(node_id)
            if not neighbors:
                get_logger().info(f'Removing node {node_id} ...')
                graph.remove_node(node_id)

    @staticmethod
    def _has_not_coordinate(node):
        return GraphsConstants.LONGITUDE not in node or GraphsConstants.LATITUDE not in node

    @staticmethod
    def multiply_all_nodes_attribute_value_by_factor(graph, attribute, factor):
        for node in graph.nodes:
            GraphUtils._multiply_node_attribute_value_by_factor(graph, node, attribute, factor)

    @staticmethod
    def set_communities_labels(graph, communities):
        community_label = 0
        for community in communities:
            for label in community:
                node = graph.nodes[label]
                node[GraphsConstants.COMMUNITY] = community_label
            community_label += 1
