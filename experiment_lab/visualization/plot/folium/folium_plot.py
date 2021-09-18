import webbrowser

from common.log.logger import get_logger


class FoliumPlot:

    @staticmethod
    def open_map_with_browser(folium_map, filename='map.html', open_browser=True):
        logger = get_logger()
        logger.info(f'Saving map to {filename}')
        folium_map.save(filename)
        if open_browser:
            logger.info('Opening browser')
            webbrowser.open(filename)
