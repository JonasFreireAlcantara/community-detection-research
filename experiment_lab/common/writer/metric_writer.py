from common.writer.writer import Writer
from common.log.logger import get_logger


class MetricWriter(Writer):

    def __init__(self, metrics, path):
        super().__init__(metrics, path)
        self.logger = get_logger()

    def prepare_object(self, obj):
        return obj

    def write(self):
        lines = ['Network,Metric']
        lines.extend([f'{network},{metric}' for network, metric in self.object_ready_to_be_write])
        with open(self.path, 'w') as csv_file:
            csv_file.write('\n'.join(lines))
