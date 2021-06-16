from karateclub import LabelPropagation

from library.graph_generator import load_got_graph
from library.community_detection import apply_model_to_graph
from library.plot import plot_pyvis_graph


def plot_got_with_barnes_hut():
    got_graph = load_got_graph()
    plot_pyvis_graph(got_graph, output_filename='got_barnes_hut.html', barnes_hut=True)


def plot_got_panel():
    got_graph = load_got_graph()
    plot_pyvis_graph(got_graph, panel=True, output_filename='got_panel.html')


def plot_got_lpa_with_barnes_hut():
    graph = load_got_graph(integer_index=True)
    graph = apply_model_to_graph(graph, LabelPropagation())
    # plot_pyvis_graph(graph, output_filename='got_lpa_barnes_hut.html', barnes_hut=True)
    plot_pyvis_graph(
        graph,
        output_filename='got_lpa_barnes_hut.html',
        options={"physics": {
                    "repulsion": {
                    "centralGravity": 0,
                    "springLength": 80,
                    "springConstant": 0.005,
                    "nodeDistance": 345,
                    "damping": 0.01
                },
                "maxVelocity": 108,
                "minVelocity": 0.75,
                "solver": "repulsion",
                "timestep": 0.09
            }})


def plot_got_lpa():
    graph = load_got_graph(integer_index=True)
    graph = apply_model_to_graph(graph, LabelPropagation())
    plot_pyvis_graph(graph, output_filename='got_lpa.html')


if __name__ == '__main__':
    #plot_got_panel()
    plot_got_lpa_with_barnes_hut()
