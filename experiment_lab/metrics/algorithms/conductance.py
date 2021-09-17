from networkx.algorithms.cuts import conductance

from metrics.algorithms.metric import Metric


class ConductanceMetric(Metric):

    @staticmethod
    def compute(graph, communities):
        conductances = list()

        for k in range(len(communities)):
            for i in range(k, len(communities)):
                cluster_1 = communities[k]
                cluster_2 = communities[i]
                conductances.append(conductance(graph, cluster_1, cluster_2))

        return min(conductances)
