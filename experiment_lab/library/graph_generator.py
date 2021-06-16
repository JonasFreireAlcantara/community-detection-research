import networkx as nx
from networkx import relabel
import pandas as pd
import numpy as np


def kclique_connected_synthetic_graph(cluster_size, clusters_number):
    graph = nx.Graph()
    c = 0
    while c < (clusters_number*cluster_size):
        clique = nx.complete_graph(range(c, c+cluster_size))
        graph = nx.union(graph, clique)
        if c != 0:
            graph.add_edge(c-cluster_size, c)
        c += cluster_size
    return graph


def create_line_graph(nodes=4):
    graph = nx.Graph()
    graph.add_nodes_from(list(range(1, nodes+1)))
    edges = [(k, k+1) for k in list(range(1, nodes))]
    graph.add_edges_from(edges)
    return graph


def load_got_graph(random_groups=False, integer_index=True, weight=False):
    print('Downloading dataset ...')
    got_data_frame = pd.read_csv('https://www.macalester.edu/~abeverid/data/stormofswords.csv')
    print('Complete download')
    got_graph = nx.Graph()

    groups = np.random.randint(1, 5, len(got_data_frame))
    for index, row in got_data_frame.iterrows():
        group = int(groups[index]) if random_groups else 1
        got_graph.add_node(row['Source'], title=row['Source'], group=group)
        got_graph.add_node(row['Target'], title=row['Target'], group=group)
        if weight:
            got_graph.add_edge(row['Source'], row['Target'], value=row['Weight'])
        else:
            got_graph.add_edge(row['Source'], row['Target'])

    if integer_index:
        got_graph = relabel.convert_node_labels_to_integers(got_graph, first_label=0)

    return got_graph
