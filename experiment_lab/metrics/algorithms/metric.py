import abc


class Metric(abc.ABC):

    @staticmethod
    @abc.abstractmethod
    def compute(graph, communities):
        """
        It computes the metric and returns it
        :param graph:
        :param communities:
        :return: the metric result
        """
