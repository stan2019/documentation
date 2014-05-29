library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c(1, 2, 3), 
  y = c(4, 5, 6), 
  type = "scatter"
)
trace2 <- list(
  x = c(20, 30, 40), 
  y = c(50, 60, 70), 
  xaxis = "x2", 
  yaxis = "y2", 
  type = "scatter"
)
trace3 <- list(
  x = c(300, 400, 500), 
  y = c(600, 700, 800), 
  xaxis = "x3", 
  yaxis = "y3", 
  type = "scatter"
)
trace4 <- list(
  x = c(4000, 5000, 6000), 
  y = c(7000, 8000, 9000), 
  xaxis = "x4", 
  yaxis = "y4", 
  type = "scatter"
)

layout <- list(
  xaxis = list(domain = c(0, 0.45)), 
  yaxis = list(domain = c(0, 0.45)), 
  xaxis4 = list(
    domain = c(0.55, 1), 
    anchor = "y4"
  ), 
  xaxis3 = list(
    domain = c(0, 0.45), 
    anchor = "y3"
  ), 
  xaxis2 = list(domain = c(0.55, 1)), 
  yaxis2 = list(
    domain = c(0, 0.45), 
    anchor = "x2"
  ), 
  yaxis3 = list(domain = c(0.55, 1)), 
  yaxis4 = list(
    domain = c(0.55, 1), 
    anchor = "x4"
  )
)



response <- p$plotly(trace0, trace1, trace2, trace3, kwargs=list(layout=layout, filename="multiple-subplots", fileopt="overwrite"))
url <- response$url
filename <- response$filename