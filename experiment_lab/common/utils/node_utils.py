from common.constants.graphs_constants import GraphsConstants


class NodeUtils:

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
            NodeUtils._set_node_attribute_value(graph, node, attribute, value)

    @staticmethod
    def _multiply_node_attribute_value_by_factor(graph, node, attribute, factor):
        graph.nodes[node][attribute] = graph.nodes[node].get(attribute, 0) * factor

    @staticmethod
    def multiply_all_nodes_attribute_value_by_factor(graph, attribute, factor):
        for node in graph.nodes:
            NodeUtils._multiply_node_attribute_value_by_factor(graph, node, attribute, factor)

    @staticmethod
    def set_communities_ids(graph, communities):
        community_id = 0
        for community in communities:
            for label in community:
                node = graph.nodes[label]
                node[GraphsConstants.COMMUNITY] = community_id
            community_id += 1
