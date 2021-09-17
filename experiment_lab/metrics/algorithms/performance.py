from networkx.algorithms import community

from metrics.algorithms.metric import Metric


class PerformanceMetric(Metric):

    @staticmethod
    def compute(graph, communities):
        return community.partition_quality(graph, communities)[1]
