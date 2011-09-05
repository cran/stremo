\name{iterator}
\alias{iterator}
\title{
  Minimisation of a fitting function.
}
\description{
  Function passed to an optimiser to minimise a fitting function.
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
    Fitting function to be minimised.
}
}
\details{
  This function is used inside \code{\link{fit.nlminb}} and passed as an
  argument to \code{\link{nlminb}}.
}
\value{
  Value of the statistics to be minimised given a set of parameter
  estimates. 
}
\seealso{
  \code{\link{fit.nlminb}}, \code{\link{nlminb}}, \code{\link{fml}}, and
  \code{\link{fgls}}.
}
