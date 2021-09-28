import os

from common.log.logger import get_logger


class ResourcesUtils:

    @staticmethod
    def get_list_of_topologies_path(path_dir):
        topologies = list(map(lambda filename: filename.split('.')[0], os.listdir(path_dir)))
        topologies.sort(key=int)
        return list(map(lambda topology: os.path.join(path_dir, f'{topology}.gml'), topologies))

    @staticmethod
    def create_path(path):
        logger = get_logger()
        try:
            os.makedirs(path)
        except FileExistsError:
            logger.warn(f'The directory {path} already exists')
        else:
            logger.info(f'Creating directory {path} ...')
