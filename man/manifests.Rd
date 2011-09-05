\name{manifests}
\alias{manifests}
\title{
  Display the indicator (manifest) variables of a lavaanified model
}
\description{
  This function returns a character vector containing the names of the
  manifest variables in a given model.
}
\usage{
manifests(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
}
}
\examples{
data(pugesek)
model <- lvnfy(pugesek.onefactor.model, data = bumpus.log)
manifests(model)
}
