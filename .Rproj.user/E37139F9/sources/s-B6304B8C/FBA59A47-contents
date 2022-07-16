library(plumber)
library(readr)

port <- Sys.getenv('Port')
server <- plumb("plumber.R")

server$run(
  host = '0.0.0.0',
  port = as.numeric(port),
  docs=TRUE
)
