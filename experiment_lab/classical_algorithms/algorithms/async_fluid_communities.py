from networkx.algorithms.community import asyn_fluidc

from classical_algorithms.algorithms.classical_algorithm import ClassicalAlgorithm


class AsyncFluidCommunitiesAlgorithm(ClassicalAlgorithm):

    def __init__(self, number_of_clusters):
        super().__init__(AsyncFluidCommunitiesAlgorithm.__name__, asyn_fluidc)
        self.number_of_clusters = number_of_clusters

    def apply(self, graph):
        return self.algorithm(graph, k=self.number_of_clusters)
