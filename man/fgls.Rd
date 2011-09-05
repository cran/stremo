\name{GLS}
\alias{fgls}
\title{
  Generalised least squares fitting function.
}
\description{
  GLS fitting function to be passed to \code{\link{fit.nlminb}}.
}
\usage{
fgls(sigma, sigma.hat)
}
\arguments{
  \item{sigma}{
    Population covariance matrix.
}
  \item{sigma.hat}{
    Model-implied covariance matrix.
}
}
\seealso{
  \code{\link{fml}}
}
