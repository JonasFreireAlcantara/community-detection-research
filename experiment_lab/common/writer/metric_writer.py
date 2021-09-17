from common.writer.writer import Writer
from common.log.logger import get_logger


class MetricWriter(Writer):

    def __init__(self, metrics, path):
        super().__init__(metrics, path)
        self.logger = get_logger()

    def prepare_object(self, obj):
        return obj

    def write(self):
        lines = [f'Network,{MetricWriter._get_metrics_header(self.object_ready_to_be_write[0])}']
        lines.extend([
            f'{network},{MetricWriter._get_metrics_content(metrics)}'
            for network, metrics in self.object_ready_to_be_write
        ])
        with open(self.path, 'w') as csv_file:
            csv_file.write('\n'.join(lines))

    @staticmethod
    def _get_metrics_header(metrics):
        metrics_name = [metric_name for metric_name, _ in metrics[1]]
        return ','.join(metrics_name)

    @staticmethod
    def _get_metrics_content(metrics):
        metrics_value = [str(metric_value) for _, metric_value in metrics]
        return ','.join(metrics_value)


