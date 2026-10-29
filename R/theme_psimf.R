#' PSIMF ggplot Theme
#'
#' A clean ggplot2 theme for PSIMF visualizations with white background,
#' full frame border, and no gridlines.
#'
#' @return A ggplot2 theme object
#'
#' @details
#' The theme includes:
#' - White plot background
#' - No gridlines
#' - Full frame (border) around the plot
#' - Bold axis labels (Arial, size 12)
#' - Axis tick labels (Arial, size 11)
#' - Visible tick marks
#' - No plot title
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#'   geom_point() +
#'   theme_psimf()
#' }
#'
theme_psimf <- function() {
  ggplot2::theme_minimal() +
      ggplot2::theme(
      plot.background = ggplot2::element_rect(fill = "white", color = NA),
      panel.background = ggplot2::element_rect(fill = "white", color = NA),
      panel.border = ggplot2::element_rect(color = "black", fill = NA, linewidth = 0.5),
      panel.grid = ggplot2::element_blank(),
      plot.title = ggplot2::element_blank(),
      axis.title = ggplot2::element_text(
        family = "Arial",
        size = 12,
        face = "bold",
        color = "black"
      ),
      axis.text = ggplot2::element_text(
        family = "Arial",
        size = 11,
        color = "black"
      ),
      axis.ticks = ggplot2::element_line(color = "black", linewidth = 0.5),
      axis.ticks.length = ggplot2::unit(2, "mm"),
      axis.text.x = ggplot2::element_text(angle = 90, vjust = 0.5, hjust = 1)
    )
}
