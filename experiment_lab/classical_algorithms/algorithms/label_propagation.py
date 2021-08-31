from networkx.algorithms.community import label_propagation_communities

from classical_algorithms.common import graph_generator
from classical_algorithms.common import ClassicalAlgorithm


class LabelPropagationAlgorithm(ClassicalAlgorithm):

    def __init__(self):
        super().__init__(LabelPropagationAlgorithm.__name__, label_propagation_communities)

    def apply(self, graph):
        return self.algorithm(graph)


if __name__ == '__main__':
    got_network = graph_generator.load_got_graph()

    lpa = LabelPropagationAlgorithm()
    communities = lpa.detect_community(got_network)
