# US Vehicle Trends Dashboard

<!-- badges: start -->
[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
<!-- badges: end -->

Interactive data visualization dashboard analyzing millions of vehicle listings to track powertrain trends (BEV, PHEV, HEV, and conventional vehicles) in the U.S. automotive market.

**Live site:** https://vehicletrends.us

## About

This dashboard provides summary information about various trends in the U.S. automobile market. The primary data source is millions of new and used vehicle listings from over 100,000 dealerships across all 50 states between 2018 and 2025. The original data are licensed from [marketcheck.com](https://www.marketcheck.com/) and cannot be made public, but this website provides public access to various summaries of the original listings data.

The project was created and is maintained by [Dr. John Paul Helveston](https://jhelvy.com), an Associate Professor in the [Engineering Management and Systems Engineering Department](https://emse.engineering.gwu.edu/) at The George Washington University.

## Dashboard Pages

- **Daily VMT** — Distribution of daily vehicle miles traveled by powertrain and vehicle type
- **VMT by Age** — Median cumulative mileage by vehicle age
- **Depreciation** — Vehicle value retention rates over time
- **Percent of Market** — Market composition trends across powertrains, vehicle types, and price bins
- **Percent of Dealers** — Share of dealerships stocking each vehicle type over time
- **Market Concentration** — Herfindahl–Hirschman Index (HHI) measuring market competitiveness
- **Registrations** — State-level vehicle registration counts and market share by powertrain

## R Data Package

The summary data powering this dashboard are available as the [{vehicletrends}](https://github.com/vehicletrends/vehicletrends) R package. Install it from GitHub to access all datasets directly in R:

```r
# install.packages("remotes")
remotes::install_github("vehicletrends/vehicletrends")
```

See the [package documentation site](https://pkg.vehicletrends.us/) for details on available datasets.

## Tech Stack

- [Quarto](https://quarto.org/) — Static site generation
- [R](https://www.r-project.org/) — Data processing and analysis
- [echarts4r](https://echarts4r.john-coene.com/) / [Apache ECharts](https://echarts.apache.org/) — Interactive charts
- [Posit Cloud Connect](https://connect.posit.cloud/) — Chart hosting
- [reactable](https://glin.github.io/reactable/) — Interactive data tables
- [GitHub Actions](https://github.com/features/actions) — CI/CD
- [Netlify](https://www.netlify.com/) — Hosting

## Local Development

Install R dependencies:

```r
remotes::install_deps()
```

Preview the site locally:

```bash
quarto preview
```

Build the site:

```bash
quarto render
```

## Citation

If you use this dashboard or its data in your research or publications, please cite it as:

> Helveston, John Paul (2026). *US Vehicle Trends Dashboard*. https://vehicletrends.us

Or in BibTeX format:

```bibtex
@misc{helveston2026vehicletrends,
  author = {Helveston, John Paul},
  title  = {{US Vehicle Trends Dashboard}},
  year   = {2026},
  url    = {https://vehicletrends.us}
}
```

## License

This website and its content are licensed under [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). The [{vehicletrends}](https://github.com/vehicletrends/vehicletrends) R data package is licensed under the MIT License.
