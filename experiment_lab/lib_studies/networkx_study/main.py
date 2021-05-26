import networkx as nx
import matplotlib.pyplot as plt


def initial_steps():
    g = nx.Graph()

    g.add_node(1)
    g.add_nodes_from([2, 3])
    g.add_nodes_from([
        (4, {"color": "red"}),
        (5, {"color": "green"}),
    ])

    g.add_edge(1, 2)
    g.add_edges_from([(2, 3), (1, 3)])

    print('nodes:', g.number_of_nodes())
    print('edges:', g.number_of_edges())


def draw_graph():
    g = nx.petersen_graph()

    options = {
        'with_labels': True,
        'font_weight': 'bold'
    }

    plt.subplot(221)
    nx.draw(g, **options)

    plt.subplot(232)
    nx.draw_shell(g, nlist=[range(5, 10), range(5)], **options)

    plt.subplot(233)
    nx.draw_random(g, **options)

    plt.subplot(234)
    nx.draw_circular(g, **options)

    plt.subplot(235)
    nx.draw_spectral(g, **options)

    plt.show()


if __name__ == '__main__':
    draw_graph()
    print('finished')
