from networkx.algorithms.community import label_propagation_communities

from classical_algorithms.algorithms.classical_algorithm import ClassicalAlgorithm


class LabelPropagationAlgorithm(ClassicalAlgorithm):

    def __init__(self):
        super().__init__(LabelPropagationAlgorithm.__name__, label_propagation_communities)

    def apply(self, graph):
        return self.algorithm(graph)
