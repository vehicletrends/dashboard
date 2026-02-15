# Common packages
library(dplyr)
library(echarts4r)
library(vehicletrends)

options(dplyr.width = Inf)

# Download URLs for data loaded from the vehicletrends package
url_vmt_daily <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/vmt_daily.csv"
url_vmt_age <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/vmt_age.csv"
url_vmt_annual_type <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/vmt_annual_type.csv"
url_vmt_annual_model <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/vmt_annual_model.csv"
url_depreciation <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/depreciation.csv"
url_dep_annual_type <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/dep_annual_type.csv"
url_dep_annual_model <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/dep_annual_model.csv"
url_listings_summary <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/listings_summary.csv"
url_percent_market <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/percent_market.csv"
url_percent_dealers <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/percent_dealers.csv"

# Download URL for HHI data
url_hhi <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/hhi.csv"
listings_summary <- read.csv(url_listings_summary)
