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

    EON_BP_PATH = os.path.join(PATH, 'eon_bp')
    ARNES_EON_BP = os.path.join(EON_BP_PATH, 'arnes_eon_bp')
