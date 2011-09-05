\name{RMSEA}
\alias{RMSEA}
\title{
  Root Mean Square Error of Approximation.
}
\description{
  RMSEA approximate fit index
}
\usage{
RMSEA(fitted.model)
}
\arguments{
  \item{fitted.model}{
    A fitted model of class "sem", as returned by
    \code{\link{fit.nlminb}}.
}
}
\value{
  \item{RMSEA}{The RMSEA index}
  \item{ci}{Confidence interval for the index}
  \item{p}{P-value}
}
\note{
  This function was heavily influenced by code in \code{\link{lavaan}}.
}
\examples{
\dontrun{
data(albert)
fit <- fit.nlminb(albert.model, albert.litho.cov, 107)
RMSEA(fit)

}
}
