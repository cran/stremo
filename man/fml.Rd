\name{ML}
\alias{fml}
\title{
  Maximum-likelihood fitting function.
}
\description{
  ML fitting function to pass to an optimiser.
}
\usage{
fml(sigma, sigma.hat)
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
  \code{\link{fgls}}
}
\note{
  Returns \code{Inf} if the model implied covariance matrix is not
  positive-definite.
}
\examples{

\dontrun{
data(albert)
cat(albert.model)
fit <- fit.nlminb(albert.model, albert.litho.cov, 107)
fml(albert.litho.cov, fit$sigma.hat)
}
}
