from karateclub import LabelPropagation

from classical_algorithms.common.graph_generator import load_got_graph
from classical_algorithms.common.algorithm_applicator import apply_model_to_graph
from visualization.modes.plot_pyvis import plot_pyvis_graph


def plot_got_with_barnes_hut():
    got_graph = load_got_graph()
    plot_pyvis_graph(got_graph, output_filename='got_barnes_hut.html', barnes_hut=True)


def plot_got_panel():
    got_graph = load_got_graph()
    plot_pyvis_graph(got_graph, panel=True, output_filename='../../../presentations/presentation_one/got_panel.html')


def plot_got_lpa_with_barnes_hut():
    graph = load_got_graph(integer_index=True)
    graph = apply_model_to_graph(graph, LabelPropagation())
    # plot_pyvis_graph(graph, output_filename='got_lpa_barnes_hut.html', barnes_hut=True)
    plot_pyvis_graph(
        graph,
        output_filename='got_lpa_barnes_hut.html')


def plot_got_lpa():
    graph = load_got_graph(integer_index=True)
    graph = apply_model_to_graph(graph, LabelPropagation())
    plot_pyvis_graph(graph, output_filename='got_lpa.html')


if __name__ == '__main__':
    #plot_got_panel()
    plot_got_lpa_with_barnes_hut()
