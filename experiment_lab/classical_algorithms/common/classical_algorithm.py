from common import log


class ClassicalAlgorithm:

    def __init__(self, name, algorithm):
        self.name = name
        self.algorithm = algorithm
        self.logger = log.get_logger()

    def detect_community(self, graph):
        self.logger.info('Start community detection')
        communities = self.apply(graph)
        self.logger.info('End community detection')
        return communities

    def apply(self, graph):
        pass
