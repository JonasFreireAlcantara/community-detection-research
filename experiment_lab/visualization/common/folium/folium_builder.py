import folium
import numpy

from common.constants.graphs_constants import GraphsConstants


class FoliumBuilder:

    MAX_ANGLE = 90
    ZOOM_FACTOR = 18

    @staticmethod
    def _compute_center_position(graph):
        lat = numpy.average(FoliumBuilder._get_min_max_value_of_attribute(graph, GraphsConstants.LATITUDE))
        lon = numpy.average(FoliumBuilder._get_min_max_value_of_attribute(graph, GraphsConstants.LONGITUDE))
        return lat, lon

    @staticmethod
    def _get_min_max_value_of_attribute(graph, attribute):
        values = list(map(lambda label: graph.nodes[label][attribute], graph.nodes))
        return min(values), max(values)

    @staticmethod
    def _compute_zoom_level(graph):
        min_lat, _ = FoliumBuilder._get_min_max_value_of_attribute(graph, GraphsConstants.LATITUDE)
        min_lon, _ = FoliumBuilder._get_min_max_value_of_attribute(graph, GraphsConstants.LONGITUDE)
        center_lat, center_lon = FoliumBuilder._compute_center_position(graph)

        greater_distance = max((center_lat - min_lat), (center_lon - min_lon))

        # TODO improve this later, priority low
        return (greater_distance / FoliumBuilder.MAX_ANGLE) * FoliumBuilder.ZOOM_FACTOR

    @staticmethod
    def build_folium_map(graph, zoom_level):
        center_position = FoliumBuilder._compute_center_position(graph)
        return folium.Map(
            location=center_position,
            zoom_start=zoom_level,
            tiles="CartoDB dark_matter",
        )
