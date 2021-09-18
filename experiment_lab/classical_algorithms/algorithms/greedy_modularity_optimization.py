from networkx.algorithms.community import greedy_modularity_communities

from classical_algorithms.algorithms.classical_algorithm import ClassicalAlgorithm


class GreedyModularityOptimizationAlgorithm(ClassicalAlgorithm):

    def __init__(self):
        super().__init__(GreedyModularityOptimizationAlgorithm.__name__, greedy_modularity_communities)

    def apply(self, graph):
        return self.algorithm(graph)
