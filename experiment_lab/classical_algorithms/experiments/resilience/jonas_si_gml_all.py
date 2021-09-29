import os

from classical_algorithms.algorithms.greedy_modularity_optimization import GreedyModularityOptimizationAlgorithm
from classical_algorithms.algorithms.label_propagation import LabelPropagationAlgorithm
from classical_algorithms.algorithms.async_fluid_communities import AsyncFluidCommunitiesAlgorithm
from classical_algorithms.common.algorithm_applicator import PlatformClassicalRunner
from metrics.algorithms import ModularityMetric, CoverageMetric, PerformanceMetric, ConductanceMetric


if __name__ == '__main__':
    source = os.path.join('/home/jonas/Desktop/jonas_si_gml')
    metrics = [
        ModularityMetric,
        CoverageMetric,
        PerformanceMetric,
        ConductanceMetric
    ]

    # Greedy Modularity
    target = os.path.join('/home/jonas/Desktop/jonas_si_gml_greedy_modularity')
    classical_runner = PlatformClassicalRunner(source, target, GreedyModularityOptimizationAlgorithm, metrics)
    classical_runner.run()
    classical_runner.save_metric()

    # Label Propagation
    target = os.path.join('/home/jonas/Desktop/jonas_si_gml_lpa')
    classical_runner = PlatformClassicalRunner(source, target, LabelPropagationAlgorithm, metrics)
    classical_runner.run()
    classical_runner.save_metric()

    # Fluid Communities k-3
    target = os.path.join('/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_3')
    classical_runner = PlatformClassicalRunner(
        source, target, AsyncFluidCommunitiesAlgorithm, metrics, number_of_clusters=3)
    classical_runner.run()
    classical_runner.save_metric()

    # Fluid Communities k-4
    target = os.path.join('/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_4')
    classical_runner = PlatformClassicalRunner(
        source, target, AsyncFluidCommunitiesAlgorithm, metrics, number_of_clusters=4)
    classical_runner.run()
    classical_runner.save_metric()

    # Fluid Communities k-5
    target = os.path.join('/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_5')
    classical_runner = PlatformClassicalRunner(
        source, target, AsyncFluidCommunitiesAlgorithm, metrics, number_of_clusters=5)
    classical_runner.run()
    classical_runner.save_metric()
