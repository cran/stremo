\name{lamb}
\alias{lamb}
\alias{lamb.bacterial.model}
\alias{lamb.archaeal.model}
\alias{lamb.bacterial.cov}
\alias{lamb.archaeal.cov}
\docType{data}
\title{
  Effects of plant species richness and evenness on soil microbial
  community diversity and function.
}
\description{
  Covariance matrices and syntax of the path models presented in the
  paper by Lamb et al. 2010.
}
\usage{
data(lamb)
lamb.bacterial.cov
lamb.archaeal.cov
lamb.bacterial.model
lamb.archaeal.model
}
\format{
  Two covariance matrices and two character vectors with model
  specifications.
}
\note{
  Both syntax vectors are for the models in page 490, figure 3.
  Covariance matrices were built from the raw data made available in the
  electronic supplementary material.
}
\source{
  Article:

  \url{http://www.springerlink.com/content/f664v272642r4347/}

  Supplementary information:

  \url{http://www.springerlink.com/content/f664v272642r4347/supplementals/}
}
\references{
  Lamb E, Kennedy N, and Siciliano SD. 2010. Effects of plant species
  richness and evenness on soil microbial community diversity and
  function. Plant and Soil 338: 483-495.
}
\examples{
\dontrun{
data(lamb)
cat(lamb.bacterial.model)
cat(lamb.archaeal.model)
lamb.bacterial.model.fit <- sem(lamb.bacterial.model, sample.cov =
                                lamb.bacterial.cov, sample.nobs = 129)
lamb.archaeal.model.fit <- sem(lamb.archaeal.model, sample.cov =
                               lamb.archaeal.cov, sample.nobs = 129)
summary(lamb.bacterial.model.fit, standardize = TRUE)
summary(lamb.archaeal.model.fit, standardize = TRUE)
}
}
\keyword{datasets}
