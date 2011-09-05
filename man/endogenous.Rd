\name{endogenous}
\alias{endogenous}
\title{
  Display the endogenous variables of a lavaanified model
}
\description{
  This function returns a character vector containing the names of the
  endogenous variables in a given model.
}
\usage{
endogenous(model)
}
%- maybe also 'usage' for other objects documented here.
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
endogenous(model)
}
