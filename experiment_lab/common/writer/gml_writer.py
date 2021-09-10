from networkx.readwrite import write_gml

from common.writer.writer import Writer
from common.log.logger import get_logger


class GMLWriter(Writer):

    def __init__(self, network, path):
        super().__init__(network, path)
        self.logger = get_logger()

    def prepare_object(self, obj):
        return obj

    def write(self):
        self.logger.info(f'Saving the network to {self.path}')
        write_gml(self.object_ready_to_be_write, self.path)
