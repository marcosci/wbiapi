#' Daily Waldbrandgefahrenindex geojson
#'
#' @return a geojson
#' @export
#' 
#' @import geojsonio
#' 
get_daily_geojson <- function() {
  geo_file <- "https://raw.githubusercontent.com/marcosci/dwd_wbi_scraper/main/data/wbi_current.geojson"
  geojson_read(geo_file)
}

#' Daily Waldbrandgefahrenindex CSV
#'
#' @return a csv
#' @export
get_daily_csv <- function() {
  geo_file <- "https://raw.githubusercontent.com/marcosci/dwd_wbi_scraper/main/data/wbi_current.csv"
  read.csv(geo_file)
}

