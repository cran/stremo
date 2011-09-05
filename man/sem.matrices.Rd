\name{Structural Matrices and Sigma}
\alias{sem.matrices}
\title{
  Structural and covariance matrices describing a path or latent
  variables model.
}
\description{
  This function builds the 4 basic matrices that describe a model
  alongside with a model-implied covariance matrix based on the
  starting values of the parameters in the model passed as an argument.
  This is the workinghorse of the package.
}
\usage{
sem.matrices(model, matrep)
}
\arguments{
  \item{model}{
    A lavaanified model with non \code{NA} starting values.
}
  \item{matrep}{
    A skeleton of the matrices that describe the model in
    question. Used mainly internally to avoid repetitive computations.
    Given by \code{\link{matrix.representation}}.
}
}
\value{
  A list with the 4 basic matrices (see \code{\link{LISREL}}) and a
  model-implied covariance matrix.
}
\seealso{
 \code{\link{LISREL}}, \code{\link{sigma.hat}},
 \code{\link{matrix.representation}}.
}
