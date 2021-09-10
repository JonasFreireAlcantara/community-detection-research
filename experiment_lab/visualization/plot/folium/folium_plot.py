import webbrowser

from common.log.logger import get_logger


class FoliumPlot:

    @staticmethod
    def open_map_with_browser(folium_map, filename='map.html', open_browser=True):
        folium_map.save(filename)
        logger = get_logger()
        if open_browser:
            logger.info('Opening browser')
            webbrowser.open(filename)
