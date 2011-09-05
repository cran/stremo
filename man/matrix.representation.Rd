\name{matrix.representation}
\alias{matrix.representation}
\title{
  Builds the LISREL "all-y" matrix representation of a model.
}
\description{
  This function builds the "all-y" matrix representation of a
  lavaanified model using the starting values of the model.
}
\usage{
matrix.representation(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
}
}
\value{
 \item{beta}{BETA matrix}
 \item{psi}{PSI matrix}
 \item{lambda.y}{LAMBDA.Y matrix}
 \item{theta.episilon}{THETA.EPISILON matrix}
}

\seealso{
  \code{\link{LISREL}}
}
\examples{
\dontrun{
data(albert)
tmp <- lvnfy(albert.model, data = albert.litho.cov, n = 107)
matrix.representation(tmp)
}
}
