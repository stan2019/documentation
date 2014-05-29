using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 3, 6, 4, 5, 2, 3, 5, 4], 
    "type" => "scatter"
  ], 
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 4, 7, 8, 3, 6, 3, 3, 4], 
    "type" => "scatter"
  ]
]
layout = [
  "legend" => [
    "x" => 1, 
    "y" => 1
  ], 
  "showlegend" => true
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "legend-inside", "fileopt" => "overwrite"])
plot_url = response["url"]