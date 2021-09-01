from networkx.readwrite import read_gml

from common.parser.parser import Parser


class GMLParser(Parser):

    def __init__(self, gml_path):
        super().__init__(gml_path)

    def prepare_object(self, obj):
        return obj

    def parse(self):
        return read_gml(self.object_ready_to_be_parsed)
