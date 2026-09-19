\name{landcover}
\alias{landcover}
\docType{data}
\title{Landcover Palette}
\description{
A 6-color palette for representing different types of land cover,
ranging from open space through developed urban areas to forest.
}
\usage{data("landcover")}
\format{
A named character vector of 6 hex colors:
\describe{
  \item{Agriculture}{#FFD700}
  \item{Open Space}{#A0A0A0}
  \item{Low Intensity}{#D9A05B}
  \item{Med. Intensity}{#C86400}
  \item{High Intensity}{#7B3F00}
  \item{Forest}{#1A5C38}
}
}
\examples{
# View the palette
landcover

# Access specific land cover type
landcover["Forest"]
landcover["Agriculture"]

# Use with ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = wt, fill = factor(cyl))) +
  geom_histogram(binwidth = 1) +
  scale_fill_manual(values = landcover[1:3])
}
\keyword{datasets}
