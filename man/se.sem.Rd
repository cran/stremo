\name{Standard errors}
\alias{se.sem}
\title{
  Standard errors of free parameters.
}
\description{
  This function computes the standard errors of a set of parameter
  estimates based on the observed information matrix.
}
\usage{
se.sem(hess, n)
}
\arguments{
  \item{hess}{
    A hessian matrix.
}
  \item{n}{
    The number of observations.
}
}
\value{
  \item{trust}{Logical indicating whether the second-order derivative
    was invertible.}
  \item{values}{Standard errors.}
}
