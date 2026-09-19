\name{decades}
\alias{decades}
\docType{data}
\title{Decades Palette}
\description{
A palette for representing decades with associated colors and line types.
Contains colors and line patterns for 2020s, 2030s, and 2040s.
}
\usage{data("decades")}
\format{
A list with two components:
\describe{
  \item{colors}{Named character vector of hex colors}
  \item{linetypes}{Named character vector of line types ("solid", "dashed", "dotted")}
}
}
\examples{
# View the colors
decades$colors

# Access specific color
decades$colors["2030s"]

# Access line types
decades$linetypes

# Use with ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl), linetype = factor(cyl))) +
  geom_point() +
  geom_smooth(se = FALSE) +
  scale_color_manual(values = decades$colors[1:3]) +
  scale_linetype_manual(values = decades$linetypes[1:3])
}
\keyword{datasets}
