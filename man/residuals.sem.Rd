\name{Residuals}
\alias{residuals.sem}
\title{
  Residuals of a fitted path or structural equations model.
}
\description{
  This function returns the residuals, that is, the difference between a
  population covariance matrix and a model-implied one. Useful to look
  for misspecifications and general fit of the data to the model.
}
\usage{
\method{residuals}{sem}(object, ...)
}
\arguments{
  \item{object}{
    An object of class "sem" as returned by \code{\link{fit.nlminb}}.
}
\item{...}{Not used.}
}
\value{
  A nvar x nvar covariance 
}
\examples{
\dontrun{
data(albert)
fit <- fit.nlminb(albert.model, albert.litho.cov, 107)
residuals(fit)
}
}
