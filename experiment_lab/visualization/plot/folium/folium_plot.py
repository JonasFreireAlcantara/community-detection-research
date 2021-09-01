import webbrowser


class FoliumPlot:

    @staticmethod
    def open_map_with_browser(folium_map, filename='map.html'):
        folium_map.save(filename)
        webbrowser.open(filename)


