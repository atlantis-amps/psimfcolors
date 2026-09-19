\name{basin}
\alias{basin}
\docType{data}
\title{Basin Palette}
\description{
A 10-color palette for representing geographic basins and regions
in the Puget Sound Integrated Modeling Framework.
}
\usage{data("basin")}
\format{
A named character vector of 10 hex colors representing different Puget Sound basins:
\describe{
  \item{Puget Sound}{#000000}
  \item{West Strait of Juan de Fuca}{#E07B00}
  \item{East Strait of Juan de Fuca}{#4DA6FF}
  \item{Admiralty Inlet}{#F5C400}
  \item{Strait of Georgia}{#CC79A7}
  \item{Whidbey Basin}{#009E73}
  \item{San Juan Archipelago}{#E8D5A3}
  \item{Central Puget Sound}{#8C8C8C}
  \item{Hood Canal}{#1B3A6B}
  \item{South Puget Sound}{#C1440E}
}
}
\examples{
# View the palette
basin

# Access specific basin color
basin["Hood Canal"]
basin["Whidbey Basin"]

# Use with ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  scale_color_manual(values = basin[1:3])
}
\keyword{datasets}
