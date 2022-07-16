library(plumber)
library(readr)

server <- plumb("plumber.R")

server$run(
  host = '0.0.0.0',
  port = 8080,
  docs=TRUE
)
