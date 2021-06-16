from networkx.algorithms import community


def compute_modularity(graph_nx, communities):
    return community.modularity(graph_nx, communities)
