import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

import numpy as np

x_theo = np.linspace(-4, 4, 100)
sincx = np.sinc(x_theo)
x = [-3.8, -3.03, -1.91, -1.46, -0.89, -0.24, -0.0, 0.41, 0.89, 1.01, 1.91, 2.28, 2.79, 3.56]
y = [-0.02, 0.04, -0.01, -0.27, 0.36, 0.75, 1.03, 0.65, 0.28, 0.02, -0.11, 0.16, 0.04, -0.15]

trace1 = Scatter(
    x=x_theo,
    y=sincx,
    name='sinc(x)'
)
trace2 = Scatter(
    x=x,
    y=y,
    name='measured',
    mode='markers',
    marker=Marker(
        size=8,
        color='#85144B'
    ),
    error_y=ErrorY(
        value=0.1,
        type='constant',
        color='#85144B',
        opacity=1,
        thickness=1.5,
        width=3
    ),
    error_x=ErrorX(
        value=0.2,
        type='constant',
        color='#85144B',
        opacity=1,
        thickness=1.5,
        width=3
    )
)
data = Data([trace1, trace2])

plot_url = py.plot(data, filename='error-bar-style')