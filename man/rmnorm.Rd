\name{Multivariate Normal}
\alias{rmnorm}
\title{
  Random multivariate normal distribution.
}
\description{
  This function returns a set of uncorrelated variables following a
  normal distribution.
}
\usage{
rmnorm(covmat, means = 0, sds = NULL, n)
}
\arguments{
  \item{covmat}{
    Covariance matrix to be decomposed.
  }
  \item{means}{
    A vector of means. If 0 data are centred. Otherwise, its size must
    be equal in length to the number of variables in \code{covmat}.
}
  \item{sds}{
    Optional vector of standard deviations. Must also have length equal
    to the number of variables in \code{covmat}.
}
  \item{n}{
    Number of observations.
}
}
\value{
  A matrix.
}
\references{
  Fan, X. and Fan, X. Using SAS for Monte Carlo Simulation Research in
  SEM. 2005. \emph{Structural Equation Modeling} 12(2): 299-333.
}
\examples{
data(latta)
mat <- rmnorm(latta.greenhouse.cov, n = 1000)
mat
latta.greenhouse.cov
cov(mat)
}
