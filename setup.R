# Common packages
library(dplyr)
library(echarts4r)
library(vehicletrends)

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

# Download URLs for HHI data (loaded from URLs, not yet in package)
url_hhi_make <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/hhi_make.csv"
url_hhi_type <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/hhi_type.csv"
url_hhi_price <- "https://raw.githubusercontent.com/vehicletrends/vehicletrends/refs/heads/main/data-raw/hhi_price.csv"

# Data loaded from URLs (not yet in the vehicletrends package)
hhi_make <- read.csv(url_hhi_make)
hhi_type <- read.csv(url_hhi_type)
hhi_price <- read.csv(url_hhi_price)
listings_summary <- read.csv(url_listings_summary)
