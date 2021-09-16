from networkx.algorithms import community

from metrics.algorithms.metric import Metric


class ModularityMetric(Metric):

    @staticmethod
    def compute(graph, communities):
        return community.modularity(graph, communities)
