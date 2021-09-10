import os

from common.constants.resources_constants import ResourcesConstants


class ResourcesUtils:

    @staticmethod
    def get_list_of_topologies_path(path_dir):
        topologies = os.listdir(path_dir)
        return list(map(lambda topology: os.path.join(ResourcesConstants.TOPOLOGIES_PATH, topology), topologies))
