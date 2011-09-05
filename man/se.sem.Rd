\name{Standard errors}
\alias{se.sem}
\title{
  Standard errors of free parameters.
}
\description{
  This function computes the standard errors of a set of parameter
  estimates based on the information matrix.
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
  A vector of standard errors.
}
