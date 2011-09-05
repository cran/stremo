\name{iterator}
\alias{iterator}
\title{
  Minimization of a fitting function.
}
\description{
  Function passed to an optimizer to minimize a fitting function.
}
\usage{
iterator(pars, model, sigma, matrep, fun = "fml")
}
\arguments{
  \item{pars}{
    Estimates of the free parameters.
  }
  \item{model}{
    A lavaanified model.
}
  \item{sigma}{
    Population covariance matrix.
}
  \item{matrep}{
    Model skeleton, as given by \code{\link{matrix.representation}}.
}
  \item{fun}{
    Fitting function to be minimized.
}
}
\details{
  This function is used inside \code{\link{fit.nlminb}} and passed as an
  argument to \code{\link{nlminb}}.
}
\value{
  Value of the statistics to be minimized given a set of parameter
  estimates. 
}
\seealso{
  \code{\link{fit.nlminb}}, \code{\link{nlminb}}, \code{\link{fml}}, and
  \code{\link{fgls}}.
}
