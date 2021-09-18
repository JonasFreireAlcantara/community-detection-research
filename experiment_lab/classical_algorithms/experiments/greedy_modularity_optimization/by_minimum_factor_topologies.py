import os

from classical_algorithms.algorithms import GreedyModularityOptimizationAlgorithm
from classical_algorithms.common.algorithm_applicator import PlatformClassicalRunner
from common.constants.resources_constants import ResourcesConstants
from metrics.algorithms import ModularityMetric, CoverageMetric, PerformanceMetric, ConductanceMetric


if __name__ == '__main__':
    source = os.path.join(ResourcesConstants.DATASET_PATH, 'by_minimum_factor_topologies')
    target = os.path.join('/home/jonas/Desktop/by_minimum_factor_topologies-greedy-modularity')
    metrics = [
        ModularityMetric,
        CoverageMetric,
        PerformanceMetric,
        ConductanceMetric
    ]

    classical_runner = PlatformClassicalRunner(source, target, GreedyModularityOptimizationAlgorithm, metrics)
    classical_runner.run()
    classical_runner.save_metric()
