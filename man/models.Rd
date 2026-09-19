\name{models}
\alias{models}
\docType{data}
\title{Models Palette}
\description{
A 5-color palette for representing different models used in the
Puget Sound Integrated Modeling Framework.
}
\usage{data("models")}
\format{
A named character vector of 5 hex colors representing different PSIMF models:
\describe{
  \item{LCCM}{#4A4A4A}
  \item{VELMA}{#1A7F74}
  \item{SSM}{#C47A1E}
  \item{Atlantis}{#1B5E8A}
  \item{QNM}{#FFFFFF}
}
}
\examples{
# View the palette
models

# Access specific model color
models["VELMA"]
models["Atlantis"]

# Use with ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  scale_color_manual(values = models[1:3])
}
\keyword{datasets}
