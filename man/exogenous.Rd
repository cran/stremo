\name{exogenous}
\alias{exogenous}
\title{
  Display the exogenous variables of a lavaanified model
}
\description{
  This function returns a character vector containing the names of the
  exogenous variables in a given model.
}
\usage{
exogenous(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
}
}
\seealso{
\code{\link{exogenous}}, \code{\link{manifests}},
\code{\link{observed}}, and \code{\link{latents}}.
}
\examples{
data(albert)
model <- lvnfy(albert.model, data = albert.litho.cov, n = 107)
exogenous(model)
}
