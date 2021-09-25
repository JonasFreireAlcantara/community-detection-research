from networkx.readwrite import read_gml
from networkx.classes.function import create_empty_copy

from common.loader.loader import Loader
from common.log.logger import get_logger


class JonasSILoader(Loader):
    """Class to load the GML from the Jonas Scientific Initiation dataset output."""

    UPPER_TRIANGULAR_POSITION = 15

    def __init__(self, gml_path, line):
        super().__init__(gml_path)
        self.logger = get_logger()
        self.line = line

    def prepare_object(self, obj):
        return obj

    def create_adjacency_matrix(self):
        """
        This function will create the adjacency matrix.
        """
        upper_triangular_vector = JonasSILoader._get_upper_triangular_adjacency_vector(self.line)
        nodes_number = JonasSILoader._get_number_nodes_upper_triangular(len(upper_triangular_vector))
        adjacency_matrix = [[0 for _ in range(nodes_number)] for _ in range(nodes_number)]
        k = 0
        for x in range(nodes_number):
            for y in range(nodes_number):
                if x == y:
                    adjacency_matrix[x][y] = 0
                else:
                    adjacency_matrix[x][y] = adjacency_matrix[y][x] = upper_triangular_vector[k]
                    k += 1
                if k >= len(upper_triangular_vector):
                    return adjacency_matrix

    @staticmethod
    def _get_upper_triangular_adjacency_vector(line):
        return line.split(';')[JonasSILoader.UPPER_TRIANGULAR_POSITION].split(' ')[:-1]

    @staticmethod
    def _get_number_nodes_upper_triangular(amount):
        return int((1 + (1 + 8*amount)**0.5) / 2)

    def parse(self):
        self.logger.info(f'Starting parse for {self.object_ready_to_be_parsed}')
        graph = read_gml(self.object_ready_to_be_parsed, label='id')
        graph = create_empty_copy(graph)

        adjacency_matrix = self.create_adjacency_matrix()
        nodes_number = len(adjacency_matrix)

        for source in range(nodes_number):
            for target in range(nodes_number):
                if adjacency_matrix[source][target] == '1':
                    graph.add_edge(source, target)

        return graph
