\name{is.hermitian}
\alias{is.hermitian}
\title{
  Check if a matrix is Hermitian.
}
\description{
  This function checks if a matrix is Hermitian, that is, if its below
  and above diagonal elements are equal.
}
\usage{
is.hermitian(covmat)
}
\arguments{
  \item{covmat}{
    A square matrix.
}
}
\value{
  \code{TRUE} or \code{FALSE}.
}
\seealso{
  \code{\link{is.pd}} to check if a matrix is positive-definite and
  \code{\link{is.within.bounds}} to check whether all covariances in a
  covariance matrix are within boundaries.
}
\examples{
data(stiles)
st.cov <- cov(stiles[-1])
is.hermitian(st.cov) # TRUE
st.cov[5,3] <- 10
is.hermitian(st.cov) # FALSE
}
\keyword{hermitian}
