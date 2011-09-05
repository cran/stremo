\name{degrees of freedom}
\alias{model.df}
\title{
  Number of degrees of freedom.
}
\description{
  This function returns the number of degrees of freedom of a
  lavaanified model.
}
\usage{
model.df(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
}
}
\value{
  \item{free}{Number of free parameters}
  \item{fixed}{Number of fixed variables}
  \item{total.df}{Amount of information available}
  \item{model.df}{Number of degrees of freedom}
}
\examples{
data(albert)
model <- lvnfy(albert.model, data = albert.litho.cov, n
               = 107)
model.df(model)
}
