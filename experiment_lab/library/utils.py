def assign_group_according_cluster_membership(graph, cluster_membership):
    for node in graph.nodes:
        graph.nodes[node]['group'] = cluster_membership[node]


def assign_group_according_communities(graph, communities):
    group = 1
    for community in communities:
        for node in community:
            graph.nodes[node]['group'] = group
            graph.nodes[node]['label'] = group
        group += 1
    return graph
