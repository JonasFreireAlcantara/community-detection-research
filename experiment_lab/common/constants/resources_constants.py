import os

import resources


# Resources paths
class ResourcesConstants:
    PATH = os.path.dirname(resources.__file__)
    DATASET_PATH = os.path.join(PATH, 'dataset')
    TOPOLOGIES_PATH = os.path.join(DATASET_PATH, 'topologies')

    RESILIENCE_PATH = os.path.join(PATH, 'resilience')
    ARNES = os.path.join(RESILIENCE_PATH, 'simton_arnes')
    ARNES_GML = os.path.join(ARNES, 'arnes_gml')
    ARNES_RESILIENCE = os.path.join(ARNES, 'arnes_resilience')
