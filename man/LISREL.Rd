\name{LISREL}
\alias{LISREL}
\alias{BETA}
\alias{PSI}
\alias{LAMBDA.Y}
\alias{THETA.EPSILON}
\title{
  Build the 4 basic matrices of the LISREL "all-y" representation given
  a set of starting values.
}
\description{
  These functions describe the structure of a path or latent variable
  model given a set of starting values. All fixed, free, and constrained
  (not yet implemented) go in them.
}
\usage{
BETA(model)
PSI(model)
LAMBDA.Y(model)
THETA.EPSILON(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
  }
}
\value{
  A structural matrix with and \code{ids} attribute indicating the
  positions of the parameters in the lavaanified model used as input.
}
\references{
  Basic Principles of Structural Equation Modeling: And Introduction to
  LISREL and EQS. \emph{Springer Text in Statistics}. Ralph O. Mueller.
}
\examples{
data(albert)
tmp <- lvnfy(albert.model, data = albert.litho.cov, n = 107)
BE <- BETA(tmp)
PS <- PSI(tmp)
LY <- LAMBDA.Y(tmp)
TE <- THETA.EPSILON(tmp)
}
