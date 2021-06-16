from pyvis.network import Network


def plot_pyvis_graph(
        graph_nx,
        panel=False,
        output_filename='view_graph.html',
        barnes_hut=False,
        height='600px',
        width='1000px',
        bgcolor='#222222',
        font_color='white',
    ):
    network = Network(height=height, width=width, bgcolor=bgcolor, font_color=font_color)
    # if barnes_hut:
    #     network.barnes_hut()
    network.from_nx(graph_nx)
    # if panel:
    #     network.show_buttons(filter_=['physics'])
    # network.show_buttons(filter_=['edges'])
    network.set_options("""
var options = {
  "edges": {
      "color": {
          "inherit": true
      },
      "smooth": false,
      "width": 2
  },
  "physics": {
      "repulsion": {
        "springLength": 50,
        "springConstant": 0.055,
        "nodeDistance": 260
      },
      "minVelocity": 0.75,
      "solver": "repulsion"
    }
}
    """)
    network.show(output_filename)
