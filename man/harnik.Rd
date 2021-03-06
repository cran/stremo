\name{harnik}
\alias{harnik}
\alias{harnik.model.A}
\alias{harnik.model.B}
\alias{harnik.model.C}
\docType{data}
\title{
  Effects of biological factors on extinction risk in fossil bivalves.
}
\description{
  Raw data and model syntaxes for the paper by Harnik (2011) on the
  direct and indirect effects of biological factors on extinction risk
  in fossil bivalves. 
}
\usage{
  data(harnik)
  harnik.model.A
  harnik.model.B
  harnik.model.B
}
\format{
  A data frame with 108 observations on 8 variables and three character
  vectors containing model syntaxes.
}
\note{
  The models are in page 2 (figure 1). All models converge. The
  coefficients in model A come from three independent linear
  regressions. The dataset is included as it was made available in the
  supporting information.  Data transformations should be done following
  the manuscript in order to get the same results. Model C involves
  groups (superfamilies).

  Data transformation:

  1. Abundance and range extent were transformed with the square root of
  the arcsine method.

  2. Abundance and body size were log-transformed.

  3. Abundance, range extent and body size were scaled and centered
  (we are replicating what was reported in the manuscript, but maximum
  likelihood estimation expects unstandardized data).
  
}
\source{
  Article:

  \url{http://www.pnas.org/cgi/doi/10.1073/pnas.1100572108}

  Supplementary information:

  \url{http://www.pnas.org/content/suppl/2011/07/25/1100572108.DCSupplemental}
}
\references{
  Harnik P. 2011. Direct and indirect effects of biological factors on
  extinction risk in fossil bivalves. PNAS early view. doi:
  10.1073/pnas.1100572108.
}
\examples{
\dontrun{
data(harnik)
harnik.t <- harnik

harnik.t$abundance <- asin(sqrt(harnik.t$abundance))
harnik.t$range.extent <- asin(sqrt(harnik.t$range.extent))

harnik.t$abundance <- log(harnik.t$abundance)
harnik.t$body.size <- log(harnik.t$body.size)

harnik.t$abundance <- scale(harnik.t$abundance, center = TRUE, scale = TRUE)
harnik.t$range.extent <- scale(harnik.t$range.extent, center = TRUE, scale =
                               TRUE)
harnik.t$body.size <- scale(harnik.t$body.size, center = TRUE, scale = TRUE)

harnik.model.A.1.fit <- sem(harnik.model.A[[1]], data = harnik.t)
harnik.model.A.2.fit <- sem(harnik.model.A[[2]], data = harnik.t)
harnik.model.A.3.fit <- sem(harnik.model.A[[3]], data = harnik.t)
harnik.model.B.fit <- sem(harnik.model.B, data = harnik.t)
harnik.model.C.fit <- sem(harnik.model.C, data = harnik.t, group =
        "superfamily", 
        group.equal = "regressions", 
        group.partial = "duration ~ body.size") 

summary(harnik.model.A.fit)
summary(harnik.model.B.fit)
summary(harnik.model.C.fit)
}
}
\keyword{datasets}
