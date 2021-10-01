import os

from classical_algorithms.algorithms.label_propagation import LabelPropagationAlgorithm
from classical_algorithms.common.algorithm_applicator import PlatformClassicalRunner
from metrics.algorithms import ModularityMetric, CoverageMetric, PerformanceMetric, ConductanceMetric


if __name__ == '__main__':
    source = os.path.join('/home/jonas/Desktop/jonas_si_gml')
    target = os.path.join('/home/jonas/Desktop/jonas_si_gml_lpa')
    metrics = [
        ModularityMetric,
        CoverageMetric,
        PerformanceMetric,
        ConductanceMetric
    ]

    classical_runner = PlatformClassicalRunner(source, target, LabelPropagationAlgorithm, metrics)
    classical_runner.run()
    classical_runner.save_metric()
