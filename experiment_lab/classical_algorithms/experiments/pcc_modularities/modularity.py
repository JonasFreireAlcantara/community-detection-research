from networkx.algorithms.community import label_propagation_communities, greedy_modularity_communities
from networkx.algorithms.community import asyn_fluidc
from networkx.generators import social

from classical_algorithms.common import graph_generator, algorithm_applicator
from visualization.modes import plot_pyvis


def modularity_graph(graph_nx, algorithm, **kwargs):
    graph_nx, communities = algorithm_applicator.apply_algorithm_to_graph(graph_nx, algorithm, **kwargs)
    modularity = modularity.compute_modularity(graph_nx, communities)
    return graph_nx, modularity


def compute_modularities(graph_list, algorithm, **kwargs):
    graph_modularities = []
    for graph in graph_list:
        graph, modularity = modularity_graph(graph, algorithm, **kwargs)
        graph_modularities.append((graph, modularity))
    return graph_modularities


def apply_algorithm_n_times(graph_nx, algorithm, times=11):
    results = []
    for _ in range(times):
        modularity, _ = modularity_graph(graph_nx, algorithm)
        results.append(modularity)
    return sum(results) / len(results)


def print_modularities(graph_modularities, labels):
    for ((graph, modularity), label) in zip(graph_modularities, labels):
        print('%.15f - %s' % (modularity, label))


def plot_graphs(graph_modularities, labels):
    for ((graph, modularity), label) in zip(graph_modularities, labels):
        plot_pyvis.plot_pyvis_graph(graph, output_filename=f'{label}.html', barnes_hut=True, panel=True)


if __name__ == '__main__':

    networks = [
        graph_generator.load_got_graph(),  # Game of Thrones
        graph_generator.kclique_connected_synthetic_graph(5, 10),  # 10 5-clique clusters
        graph_generator.kclique_connected_synthetic_graph(10, 10),  # 10 5-clique clusters
        social.karate_club_graph(),  # Zachary's Karate Club
        social.davis_southern_women_graph(),  # Davis Southern Women
        social.florentine_families_graph(),  # Florentine families
        social.les_miserables_graph(),  # Les miserables
    ]

    networks_label = [
        'game_of_thrones',
        '10_5-clique_clusters',
        '10_10-clique_clusters',
        "zachary_karate_club",
        'davis_southern_women',
        'florentine_families',
        'les_miserables',
    ]

    print('COMPUTING MODULARITY FOR LABEL PROPAGATION ...')
    graph_modularities = compute_modularities(networks, label_propagation_communities)
    print_modularities(graph_modularities, networks_label)
    # plot_graphs(graph_modularities, networks_label)

    print('---')

    print('COMPUTING MODULARITY FOR K-CLIQUE COMMUNITIES WITH PERCOLATION METHOD ...')
    graph_modularities_greedy_modularity = compute_modularities(networks, greedy_modularity_communities)
    print_modularities(graph_modularities_greedy_modularity, networks_label)
    # plot_graphs(graph_modularities_greedy_modularity, networks_label)

    print('---')

    print('COMPUTING MODULARITY FOR ASYNCHRONOUS FLUID COMMUNITIES K=2 ...')
    graph_modularities_asyn_fluidc = compute_modularities(networks, asyn_fluidc, k=2)
    print_modularities(graph_modularities_asyn_fluidc, networks_label)
    # plot_graphs(graph_modularities_asyn_fluidc, networks_label)

    print('---')

    print('COMPUTING MODULARITY FOR ASYNCHRONOUS FLUID COMMUNITIES K=3 ...')
    graph_modularities_asyn_fluidc = compute_modularities(networks, asyn_fluidc, k=3)
    print_modularities(graph_modularities_asyn_fluidc, networks_label)
    # plot_graphs(graph_modularities_asyn_fluidc, networks_label)

    print('COMPUTING MODULARITY FOR ASYNCHRONOUS FLUID COMMUNITIES K=4 ...')
    graph_modularities_asyn_fluidc = compute_modularities(networks, asyn_fluidc, k=4)
    print_modularities(graph_modularities_asyn_fluidc, networks_label)
    plot_graphs(graph_modularities_asyn_fluidc, networks_label)
