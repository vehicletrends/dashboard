# US Vehicle Trends Dashboard

Interactive data visualization dashboard analyzing 10+ million vehicle listings from 2018-2024 to track powertrain trends (BEV, PHEV, HEV, and conventional vehicles) in the US automotive market.

- **URL**: https://vehicletrends.us
- **Author**: Dr. John Paul Helveston (George Washington University)
- **Data Source**: MarketCheck automotive listing data
- **License**: CC-BY-SA 4.0

## Tech Stack

- **Quarto** - Static site generator (renders `.qmd` files to HTML)
- **R** - Data processing and analysis
- **Posit Cloud Connect** - Interactive chart visualizations (embedded iframes)
- **reactable** - Interactive data tables
- **GitHub Actions** - CI/CD (builds on push and weekly schedule)
- **GitHub Pages** - Hosting (deployed to `gh-pages` branch)

## Project Structure

```
dashboard/
├── *.qmd                       # Quarto markdown pages (main content)
├── _quarto.yml                 # Quarto project configuration
├── styles.css                  # Custom CSS styling
├── DESCRIPTION                 # R package dependencies
├── _site/                      # Built HTML output (gitignored)
├── _extensions/                # Quarto extensions (FontAwesome)
├── _includes/header.html       # HTML header includes
├── images/                     # Logo, favicon, assets
└── .github/workflows/main.yml  # GitHub Actions CI/CD
```

## Key Patterns

### Page Structure

Each dashboard page follows this pattern:

```qmd
---
title: "Page Title"
---

```{r}
#| include: false
library(dplyr)
library(reactable)
```

```{r}
data_url <- "https://cdn.jsdelivr.net/gh/vehicletrends/data@main/data/dataset.csv"
data <- read.csv(data_url)
```

::: {.panel-tabset}
## Charts
[Embedded Posit Cloud Connect iframe]

## Data
[CSV download link + reactable interactive table]
:::
```

### Data Sources

All data is fetched from jsDelivr CDN at render time:
- Primary: `https://cdn.jsdelivr.net/gh/vehicletrends/data@main/data/`
- Secondary: `https://cdn.jsdelivr.net/gh/jhelvy/vehicletrends@main/data/`

### Powertrain Mapping

Standard powertrain codes used throughout:
- `bev` - Battery Electric Vehicle
- `bev_tesla` - Tesla BEV
- `bev_non_tesla` - Non-Tesla BEV
- `phev` - Plug-in Hybrid Electric Vehicle
- `hev` - Hybrid Electric Vehicle
- `cv` - Conventional Vehicle

### Code Execution Settings

Default chunk options in `_quarto.yml`:
- `echo: false` - Hide R code in output
- `message: false` - Suppress R messages

Use `#| include: false` for setup chunks that shouldn't appear in output.

### Reactable Tables

Standard table configuration:
```r
reactable(
  data,
  searchable = TRUE,
  filterable = TRUE,
  showPageSizeOptions = TRUE,
  pageSizeOptions = c(5, 10, 25, 50),
  defaultPageSize = 10
)
```

### Iframe Embeds

Posit Cloud Connect visualizations embedded as:
```r
htmltools::tags$iframe(
  src = "https://[hash].share.connect.posit.cloud/",
  height = "800px",
  width = "100%",
  style = "border: none;"
)
```

## Development

### Local Preview

```bash
quarto preview
```

Opens at http://localhost:5896 with auto-reload.

### Build Site

```bash
quarto render
```

Output goes to `_site/` directory.

### R Dependencies

Install via:
```r
remotes::install_deps()
```

Key packages: `dplyr`, `reactable`, `htmltools`, `kableExtra`, `knitr`, `rmarkdown`

## Deployment

Automated via GitHub Actions on:
- Push to main/master branches
- Pull requests
- Weekly schedule (Sundays at midnight EST)

Workflow renders all `.qmd` files and deploys `_site/` to `gh-pages` branch.

## Adding a New Page

1. Create `new-page.qmd` in root directory
2. Add navigation entry in `_quarto.yml` under `website.sidebar.contents`
3. Follow the panel-tabset pattern (Charts + Data tabs)
4. Commit and push - GitHub Actions handles deployment

## Common Data Transformations

Rename columns for display:
```r
data <- data |>
  rename(
    "Powertrain" = powertrain,
    "Vehicle Type" = vehicle_type
  )
```

Round numeric columns:
```r
data <- data |>
  mutate(across(where(is.numeric), \(x) round(x, 2)))
```
