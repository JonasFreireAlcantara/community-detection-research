import time

from common.log import logger


class ClassicalAlgorithm:
    MILLION = 1_000_000

    def __init__(self, name, algorithm):
        self.name = name
        self.algorithm = algorithm
        self.logger = logger.get_logger()
        self.computing_time_ms = 0

    def detect_community(self, graph):
        self.logger.info('Start community detection')
        start_time_ns = time.process_time_ns()
        communities = self.apply(graph)
        end_time_ns = time.process_time_ns()
        self.logger.info('End community detection')

        self.computing_time_ms = (end_time_ns - start_time_ns) / ClassicalAlgorithm.MILLION
        return communities

    def apply(self, graph):
        pass
