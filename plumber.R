#* @apiTitle Waldbrandgefahrenindex API

#* @preempt __first__
#* @get /
function(req, res) {
  res$status <- 302
  res$setHeader("Location", "./__docs__/")
  res$body <- "Redirecting..."
  res
}

#* Daily Waldbrandgefahrenindex geojson
#* @get /wbi_geojson
function() {
  geo_file <- "https://raw.githubusercontent.com/marcosci/dwd_wbi_scraper/main/data/wbi_current.geojson"
  geojson_read(geo_file)
}

#' Daily Waldbrandgefahrenindex CSV
#* @serializer csv
#* @get /wbi_csv
function() {
  geo_file <- "https://raw.githubusercontent.com/marcosci/dwd_wbi_scraper/main/data/wbi_current.csv"
  read.csv(geo_file)
}

