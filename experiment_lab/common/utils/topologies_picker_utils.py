import os

from common.constants.resources_constants import ResourcesConstants
from common.constants.picker_constants import PickerConstants
from common.loader.gml_loader import GMLLoader
from common.writer.gml_writer import GMLWriter
from common.utils.resources_utils import ResourcesUtils

"""The aim of this code is pick the topologies based on some condition."""


class TopologiesPickerUtils:

    @staticmethod
    def _filter_networks_by_attribute(networks, attribute, values):
        return [network for network in networks if network.graph[attribute] in values]

    @staticmethod
    def _filter_networks_by_ration_between_node_and_edges(networks):
        return [
            network for network in networks
            if (len(network.edges) / len(network.nodes)) > PickerConstants.MIN_RATIO_EDGES_NODES
        ]

    @staticmethod
    def _add_attribute_to_gml_file(gml_path, attribute, value):
        with open(gml_path, 'r') as f:
            lines = f.readlines()
        lines.insert(1, f'  {attribute} {value}\n')
        with open(gml_path, 'w') as f:
            f.write(''.join(lines))

    @staticmethod
    def pick_topologies_by_attribute(target_path, attribute, values):
        topology_paths = ResourcesUtils.get_list_of_topologies_path(ResourcesConstants.TOPOLOGIES_PATH)

        networks = list()
        for topology_path in topology_paths:
            TopologiesPickerUtils._add_attribute_to_gml_file(topology_path, 'multigraph', '1')
            network = GMLLoader(topology_path).parse()
            networks.append(network)

        networks = TopologiesPickerUtils._filter_networks_by_attribute(networks, attribute, values)
        networks = TopologiesPickerUtils._filter_networks_by_ration_between_node_and_edges(networks)

        for network in networks:
            gml_writer = GMLWriter(network, path=os.path.join(target_path, f'{network.graph["label"].strip()}.gml'))
            gml_writer.write()


if __name__ == '__main__':
    target_path = os.path.join(ResourcesConstants.DATASET_PATH, 'usa_topologies')

    TopologiesPickerUtils.pick_topologies_by_attribute(target_path, 'GeoLocation', [
        'US', 'USA'
    ])
