import os

import resources


# Resources paths
class ResourcesConstants:
    PATH = os.path.dirname(resources.__file__)
    DATASET_PATH = os.path.join(PATH, 'dataset')
    TOPOLOGIES_PATH = os.path.join(DATASET_PATH, 'topologies')
