% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Canola.R
\docType{data}
\name{Canola}
\alias{Canola}
\title{Yields of Canola}
\format{\describe{A data frame with 36 observations on the 
following five variables:
  \item{blcok}{a factor specifying the blocks in the experiment.}
  \item{plot}{a factor numbering the plots within each block.}
  \item{N}{a factor specifying the amount of nitrogen 
  applied to each plot.}
  \item{S}{a factor specifying the amount of sulphur 
  applied to each plot.}
  \item{yield}{a numerical vector recording the 
  yield from each plot.}
}}
\source{
VSN International (2014). Genstat for Windows 17th Edition. VSN International, 
Hemel Hempstead, UK. Web page: Genstat.co.uk.

\url{www.vsni.co.uk/}
}
\usage{
Canola
}
\description{
The Canola dataset contains data from an experiment to 
study the effects of nitrogen and sulphur on the yield
 of canola, using a randomzed-block design.
}
\examples{
# The aov code
library(VSNEDU)
data(Canova)
moda <- aov(yield ~ N*S + Error(block),data=Canola)
summary(moda)
}
\keyword{datasets}
