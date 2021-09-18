from time import time

from networkx.algorithms.community import asyn_lpa_communities

from classical_algorithms.algorithms.classical_algorithm import ClassicalAlgorithm


class LabelPropagationAlgorithm(ClassicalAlgorithm):

    def __init__(self):
        super().__init__(LabelPropagationAlgorithm.__name__, asyn_lpa_communities)
        self.seed = int(time())

    def apply(self, graph):
        return self.algorithm(graph, seed=self.seed)
