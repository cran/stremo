\name{cor2cov}
\alias{cor2cov}
\title{
  Covariance matrix from a correlation matrix.
}
\description{
  Build a covariance matrix from a correlation matrix and variables
  standard deviations.
}
\usage{
cor2cov(cormat, sds)
}
\arguments{
  \item{cormat}{
    Correlation matrix to be transformed.
  }
  \item{sds}{
    Vector of standard deviations.
}
}
\value{
  Covariance matrix.
}
\seealso{
  \code{\link{cov2cor}}, \code{\link{mirror.tri}}
}
\examples{
covmat <- ability.cov$cov
sds <- sqrt(diag(covmat))
cormat <- cov2cor(covmat)

covmat.trans <- cor2cov(cormat, sds)
round(covmat - covmat.trans, 10)
}
