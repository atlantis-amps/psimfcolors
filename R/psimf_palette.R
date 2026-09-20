#' Get PSIMF Color Palette
#'
#' Returns a color palette from the psimfcolors package.
#'
#' @param palette Character. Name of the palette: "basin", "decades", "magnitude", "landcover", or "models".
#' @param n Numeric. Optional number of colors to return. If NULL, returns all available colors.
#'
#' @return A character vector of hex colors.
#'
#' @export
#'
#' @examples
#' psimf_palette("basin")
#' psimf_palette("decades", n = 3)
#'
psimf_palette <- function(palette, n = NULL) {
  # List of available palettes
  palettes_list <- list(
    basin = basin,
    decades = decades$colors,
    magnitude = magnitude,
    landcover = landcover,
    models = models
  )

  if (!palette %in% names(palettes_list)) {
    stop("Palette '", palette, "' not found. Available palettes: ",
         paste(names(palettes_list), collapse = ", "))
  }

  pal <- palettes_list[[palette]]

  # If n is specified, return first n colors
  if (!is.null(n)) {
    if (n > length(pal)) {
      warning("Requested ", n, " colors but palette has only ", length(pal),
              " colors. Returning all available colors.")
      return(pal)
    }
    return(pal[1:n])
  }

  return(pal)
}
