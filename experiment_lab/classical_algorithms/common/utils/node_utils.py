class NodeUtils:

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
