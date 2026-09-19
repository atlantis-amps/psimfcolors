\name{magnitude}
\alias{magnitude}
\docType{data}
\title{Magnitude Palette}
\description{
A 5-color palette for representing magnitude of change or effect,
ranging from strongly positive to strongly negative.
}
\usage{data("magnitude")}
\format{
A named character vector of 5 hex colors:
\describe{
  \item{Strongly positive}{#0072B2}
  \item{Positive}{#56B4E9}
  \item{Neutral}{#D9D9D9}
  \item{Negative}{#E69F00}
  \item{Strongly negative}{#D55E00}
}
}
\examples{
# View the palette
magnitude

# Access specific colors
magnitude["Positive"]
magnitude["Neutral"]

# Use with ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_manual(values = magnitude[c(2, 1, 5)])
}
\keyword{datasets}
