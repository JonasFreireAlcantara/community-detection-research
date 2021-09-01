import folium

from visualization.plot.folium.folium_plot import FoliumPlot


m = folium.Map(location=[-8.0577, -34.8830])
FoliumPlot.open_map_with_browser(m)




