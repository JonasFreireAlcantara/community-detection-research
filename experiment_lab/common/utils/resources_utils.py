import os

from common.constants.resources_constants import ResourcesConstants
from common.log.logger import get_logger


class ResourcesUtils:

    @staticmethod
    def get_list_of_topologies_path(path_dir):
        topologies = os.listdir(path_dir)
        return list(map(lambda topology: os.path.join(ResourcesConstants.TOPOLOGIES_PATH, topology), topologies))

    @staticmethod
    def create_path(path):
        logger = get_logger()
        try:
            os.makedirs(path)
        except FileExistsError:
            logger.warn(f'The directory {path} already exists')
        else:
            logger.info(f'Creating directory {path} ...')
