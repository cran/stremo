\name{is.within.bounds}
\alias{is.within.bounds}
\title{
  Check if all covariances in a covariance matrix are within bounds.
}
\description{
  This function checks whether all covariances are within the expected
  values. It uses the diagonal to extract the standard deviations, so
  one ought to make sure that all values in the diagonal are correct.
}
\usage{
is.within.bounds(covmat)
}
\arguments{
  \item{covmat}{
    A covariance matrix to be tested. Should be Hermitian.
}
}
\value{
  TRUE or FALSE. If FALSE, some information about which covariances are
  out of bounds is printed.
}

\seealso{
  \code{\link{is.pd}} and \code{\link{is.hermitian}}.
}
\examples{
data(latta)
is.within.bounds(latta.greenhouse.cov)
}
\keyword{covariances}
