import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

trace1 = Bar(
    x=['giraffes', 'orangutans', 'monkeys'],
    y=[20, 14, 23],
    name='SF Zoo',
    marker=Marker(
        line=Line(
            color='grey'
        ),
        color='orange'
    )
)
trace2 = Bar(
    x=['giraffes', 'orangutans', 'monkeys'],
    y=[12, 18, 29],
    name='LA Zoo',
    marker=Marker(
        line=Line(
            color='grey',
            width=3
        ),
        color='blue'
    )
)
data = Data([trace1, trace2])
layout = Layout(
    title='Animal Population',
    xaxis=XAxis(
        type='category'
    ),
    yaxis=YAxis(
        title='# of animals (thousands)'
    ),
    categories=['giraffes', 'orangutans', 'monkeys'],
    barmode='group',
    bargap=0.25,
    bargroupgap=0.3,
    orientation='v'
)
fig = Figure(data=data, layout=layout)

plot_url = py.plot(fig, filename='style-bar')