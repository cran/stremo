\name{is.pd}
\alias{is.pd}
\title{
  Do some basic checking to see if a matrix is positive-definite.
}
\description{
  A covariance matrix used in structural equation modeling should be
  positive-definite, as it is going to be inverted during estimation and
  fit. This function checks whether a Hermitian matrix is
  positive-definite.
}
\usage{
is.pd(covmat)
}
\arguments{
  \item{covmat}{
    A Hermitian matrix.
}
}
\details{
  This function checks, in this order:

  1. Matrix is Hermitian

  2. All covariances are within bounds

  3. See if matrix is invertible using \code{\link{solve}}

  4. Check if all eigenvalues are positive

  5. Check whether the determinant is positive
}
\value{
  TRUE or FALSE.
}
\seealso{
  \code{\link{is.within.bounds}} and \code{\link{is.hermitian}}.
}
\examples{
data(latta)
is.pd(latta.greenhouse.cov)
}
\keyword{positive-definite}
