\name{boot.lavaan}
\alias{boot.lavaan}
\title{
  Nonparametrical bootstrapping of a SEM model fit by
  \code{\link{lavaan}}.
}
\description{
  This function does very crude nonparametrical bootstrapping of a
  fitted sem model using \code{\link{lavaan}}.
}
\usage{
boot.lavaan(fitted.model, n)
}
\arguments{
  \item{fitted.model}{
    A model fitted by \code{\link{sem}} or \code{\link{cfa}}.
  }
  \item{n}{
    Number of replications.
  }
}
\details{
  Steps (following Shipley 2002):

  1. Fit a model normally using the arguments 'sample.cov' and
  'sample.nobs' instead of 'data';

  2. Get the sigma hat from the fitted model and build an empirical
  dataset with 'sample.nobs' observations;

  3. Get 'sample.nobs' observations from this new dataset with
  replacement;

  4. Fit a new model using the sample taken from the simulated dataset;

  5. Repeat 3 and 4 'n' times.
}
\value{
  \item{X2}{Bootstrapped maximum likelihood chi-squared}
  \item{p.X2}{P value of the bootstrapped maximum likelihood chi-squared}
  \item{est}{Estimated coefficients}
  \item{se}{Bootstrapped standard errors}
  \item{z}{Bootstrapped z values}
  \item{p.est}{P values of the bootstrapped coefficients}
  \item{coefs}{Matrix with the values of all coefficients in all runs}
}
\references{
  Shipley, B. 2002. Cause and Correlation in Biology. Cambridge
  University Press.
}
\examples{
\dontrun{
data(albert)
fit <- sem(albert.model, sample.cov = albert.litho.cov, sample.nobs
           = 107)
booted.fit <- boot.lavaan(fit, 1000)
}
}
