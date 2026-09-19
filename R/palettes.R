#' Magnitude Palette
#'
#' A 5-color palette for representing magnitude of change or effect,
#' ranging from strongly positive to strongly negative.
#'
#' @format A named character vector of 5 hex colors
#' @export
magnitude <- c(
  "Strongly positive" = "#0072B2",
  "Positive" = "#56B4E9",
  "Neutral" = "#D9D9D9",
  "Negative" = "#E69F00",
  "Strongly negative" = "#D55E00"
)

#' Decades Palette
#'
#' A palette for representing decades with associated colors and line types.
#' Contains colors and line patterns for 2020s, 2030s, and 2040s.
#'
#' @format A list with two components:
#'   \describe{
#'     \item{colors}{Named character vector of hex colors}
#'     \item{linetypes}{Named character vector of line types}
#'   }
#'
#' @export
decades <- list(
  colors = c(
    "2020s" = "#9970AB",
    "2030s" = "#00838F",
    "2040s" = "#AACC00"
  ),
  linetypes = c(
    "2020s" = "solid",
    "2030s" = "dashed",
    "2040s" = "dotted"
  )
)

#' Basin Palette
#'
#' A 10-color palette for representing geographic basins and regions
#' in the Puget Sound Integrated Modeling Framework.
#'
#' @format A named character vector of 10 hex colors
#' @export
basin <- c(
  "Puget Sound" = "#000000",
  "West Strait of Juan de Fuca" = "#E07B00",
  "East Strait of Juan de Fuca" = "#4DA6FF",
  "Admiralty Inlet" = "#F5C400",
  "Strait of Georgia" = "#CC79A7",
  "Whidbey Basin" = "#009E73",
  "San Juan Archipelago" = "#E8D5A3",
  "Central Puget Sound" = "#8C8C8C",
  "Hood Canal" = "#1B3A6B",
  "South Puget Sound" = "#C1440E"
)

#' Landcover Palette
#'
#' A 6-color palette for representing different types of land cover,
#' ranging from open space through developed urban areas to forest.
#'
#' @format A named character vector of 6 hex colors
#' @export
landcover <- c(
  "Agriculture" = "#FFD700",
  "Open Space" = "#A0A0A0",
  "Low Intensity" = "#D9A05B",
  "Med. Intensity" = "#C86400",
  "High Intensity" = "#7B3F00",
  "Forest" = "#1A5C38"
)
