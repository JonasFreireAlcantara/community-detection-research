import folium

from common.constants import graphs_constants


class FoliumUtils:

    @staticmethod
    def add_node_to_map(folium_map, location, label):
        folium.Circle(
            radius=1000,
            location=location,
            popup=label,
            tooltip=label,
            fill=True,
            color='blue'
        ).add_to(folium_map)

    @staticmethod
    def add_nodes_to_map(folium_map, graph):
        for label in graph.nodes:
            node = graph.nodes[label]
            location = [node['Latitude'], node['Longitude']]
            FoliumUtils.add_node_to_map(folium_map, location, label)

    @staticmethod
    def add_edge_to_map(folium_map, points):
        folium.PolyLine(
            points,
            color="red",
            weight=1.5,
            opacity=0.7
        ).add_to(folium_map)

    @staticmethod
    def add_edges_to_map(folium_map, graph):
        for source, target in graph.edges:
            source_node = graph.nodes[source]
            source_point = (source_node[graphs_constants.LATITUDE], source_node[graphs_constants.LONGITUDE])
            target_node = graph.nodes[target]
            target_point = (target_node[graphs_constants.LATITUDE], target_node[graphs_constants.LONGITUDE])
            FoliumUtils.add_edge_to_map(folium_map, [source_point, target_point])
