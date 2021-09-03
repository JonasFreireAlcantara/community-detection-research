from networkx.readwrite import read_gml

from common.parser.parser import Parser
from common.log.logger import get_logger


class GMLParser(Parser):

    def __init__(self, gml_path):
        super().__init__(gml_path)
        self.logger = get_logger()

    def prepare_object(self, obj):
        return obj

    def parse(self):
        self.logger.info(f'Starting parse ...')
        return read_gml(self.object_ready_to_be_parsed)
