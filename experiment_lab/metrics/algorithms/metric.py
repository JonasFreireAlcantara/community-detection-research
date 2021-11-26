import abc
import time


class Metric(abc.ABC):

    MILLION = 1_000_000

    @abc.abstractmethod
    def compute(self, graph, communities):
        """
        It computes the metric and returns it
        :param graph:
        :param communities:
        :return: the metric result
        """
        pass

    def compute_metric_and_execution_time(self, graph, communities):
        start_time_ns = time.process_time_ns()
        metric_result = self.compute(graph, communities)
        end_time_ns = time.process_time_ns()
        computing_time_ms = (end_time_ns - start_time_ns) / Metric.MILLION
        return computing_time_ms, metric_result
