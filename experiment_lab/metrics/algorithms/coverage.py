from networkx.algorithms import community

from metrics.algorithms.metric import Metric


class CoverageMetric(Metric):

    @staticmethod
    def compute(graph, communities):
        return community.partition_quality(graph, communities)[0]
