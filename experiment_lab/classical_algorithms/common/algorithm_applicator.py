from classical_algorithms.common import group_assignment


def apply_model_to_graph(graph_nx, model):
    model.fit(graph_nx)
    cluster_membership = model.get_memberships()
    group_assignment.assign_group_according_cluster_membership(graph_nx, cluster_membership)
    return graph_nx


def apply_algorithm_to_graph(graph_nx, algorithm, **kwargs):
    communities = list(algorithm(graph_nx, **kwargs))
    graph_nx = group_assignment.assign_group_according_communities(graph_nx, communities)
    return graph_nx, communities
