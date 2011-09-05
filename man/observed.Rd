\name{observed}
\alias{observed}
\title{
  Display the observed variables of a lavaanified model
}
\description{
  This function returns a character vector containing the names of the
  observed variables in a given model.
}
\usage{
observed(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
}
}
\examples{
data(albert)
model <- lvnfy(albert.model, data = albert.litho.cov, n = 107)
exogenous(model)
}
