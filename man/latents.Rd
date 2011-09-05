\name{latents}
\alias{latents}
\title{
  Display the latent variables of a lavaanified model
}
\description{
  This function returns a character vector containing the names of the
  latent variables in a given model.
}
\usage{
latents(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
}
}
\examples{
data(pugesek)
model <- lvnfy(pugesek.onefactor.model, data = bumpus.log)
latents(model)
}
