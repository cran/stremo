\name{sigma.hat}
\alias{sigma.hat}
\title{
  Calculates the sigma hat given a LISREL "all-y" matrix
  representation object.
}
\description{
  This function takes an object with all 4 basic LISREL matrices plus
  the identity matrix and constructs the sigma hat, that is, a
  predicted covariance matrix.
}
\usage{
sigma.hat(matrep)
}
\arguments{
  \item{matrep}{
    The matrix representation of a lavaanified model.
  }
}
\value{
  A covariance matrix.
}
\seealso{
  \code{\link{sem.matrices}} and \code{\link{matrix.representation}}.
}
