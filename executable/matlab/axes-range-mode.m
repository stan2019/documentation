signin('test-runner', '9h29fe3l0x')

data = {...
  struct(...
    'x', [2, 4, 6], ...
    'y', [-3, 0, 3], ...
    'type', 'scatter')...
};
layout = struct(...
    'xaxis', struct(...
      'autorange', true, ...
      'rangemode', 'tozero'), ...
    'yaxis', struct(...
      'autorange', true, ...
      'rangemode', 'nonnegative'), ...
    'showlegend', false);

response = plotly(data, struct('layout', layout, 'filename', 'axes-range-mode', 'fileopt', 'overwrite'));
plot_url = response.url