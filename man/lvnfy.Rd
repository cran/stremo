\name{lvnfy}
\alias{lvnfy}
\title{
    Set the ground to start analysing a structural equation model.
}
\description{
    This function uses \code{\link{lavaan}} to build an internal
    representation of a model to be fit.
}
\usage{
lvnfy(model, data, n = NULL, ...)
}
\arguments{
  \item{model}{
    Model syntax, as in \code{\link{lavaan}}.
}
  \item{data}{
    Either a covariance matrix or raw data.
}
  \item{n}{
    The number of observations, only used if data is a covariance
    matrix.
}
  \item{\dots}{
    Other arguments to be passed to \code{\link{sem}}.
}
}
\value{
    A lavaanified model.
}
\examples{
data(albert)
tmp <- lvnfy(albert.model, data = albert.litho.cov, n = 107)
tmp
}
