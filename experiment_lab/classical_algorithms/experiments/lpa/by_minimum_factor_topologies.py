import os

from classical_algorithms.algorithms.label_propagation import LabelPropagationAlgorithm
from classical_algorithms.common.algorithm_applicator import PlatformClassicalRunner
from common.constants.resources_constants import ResourcesConstants
from metrics.algorithms.modularity import ModularityMetric


if __name__ == '__main__':
    source = os.path.join(ResourcesConstants.DATASET_PATH, 'by_minimum_factor_topologies')
    target = os.path.join('/home/jonas/Desktop/by_minimum_factor_topologies')

    classical_runner = PlatformClassicalRunner(source, target, LabelPropagationAlgorithm, ModularityMetric)
    classical_runner.run()
    classical_runner.save_metric()
