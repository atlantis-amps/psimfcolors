# psimfcolors

Color palettes for the Puget Sound Integrated Modeling Framework (PSIMF)

## Installation

```r
# Install from GitHub
devtools::install_github("user/psimfcolors")
```

## Overview

psimfcolors provides a collection of carefully designed color palettes for visualizing different aspects of Puget Sound data:

- **magnitude**: For representing magnitude of change or effect (5 colors)
- **decades**: For temporal data with associated line types (3 decades, 2020s-2040s)
- **basin**: For geographic regions within Puget Sound (10 basins)
- **landcover**: For different land cover types (6 types)

## Usage

### Magnitude Palette

Use for representing magnitude of change or effect, ranging from strongly positive to strongly negative:

```r
library(psimfcolors)

# View the palette
magnitude

# Access specific colors
magnitude["Positive"]
magnitude["Neutral"]

# Use with ggplot2
library(ggplot2)
ggplot(data, aes(x = var, fill = magnitude_category)) +
  geom_col() +
  scale_fill_manual(values = magnitude)
```

### Decades Palette

Use for temporal data with both colors and line types:

```r
# Access colors
decades$colors
decades$colors["2030s"]

# Access line types
decades$linetypes
decades$linetypes["2020s"]

# Use with ggplot2
ggplot(data, aes(x = year, y = value, color = decade, linetype = decade)) +
  geom_line() +
  scale_color_manual(values = decades$colors) +
  scale_linetype_manual(values = decades$linetypes)
```

### Basin Palette

Use for geographic visualization of Puget Sound basins:

```r
# View all basin colors
basin

# Access specific basin color
basin["Hood Canal"]

# Use with ggplot2
ggplot(data, aes(x = var, fill = basin_name)) +
  geom_col() +
  scale_fill_manual(values = basin)
```

### Landcover Palette

Use for representing different land cover types:

```r
# View the landcover palette
landcover

# Use with ggplot2
ggplot(data, aes(x = longitude, y = latitude, fill = landcover_type)) +
  geom_tile() +
  scale_fill_manual(values = landcover)
```

## Palette Details

### Magnitude
- Strongly positive: #0072B2
- Positive: #56B4E9
- Neutral: #D9D9D9
- Negative: #E69F00
- Strongly negative: #D55E00

### Decades
- 2020s: #9970AB (solid line)
- 2030s: #00838F (dashed line)
- 2040s: #AACC00 (dotted line)

### Basin
- Puget Sound: #000000
- West Strait of Juan de Fuca: #E07B00
- East Strait of Juan de Fuca: #4DA6FF
- Admiralty Inlet: #F5C400
- Strait of Georgia: #CC79A7
- Whidbey Basin: #009E73
- San Juan Archipelago: #E8D5A3
- Central Puget Sound: #8C8C8C
- Hood Canal: #1B3A6B
- South Puget Sound: #C1440E

### Landcover
- Agriculture: #FFD700
- Open Space: #A0A0A0
- Low Intensity: #D9A05B
- Med. Intensity: #C86400
- High Intensity: #7B3F00
- Forest: #1A5C38

## License

MIT
