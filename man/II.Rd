\name{II}
\alias{II}
\title{
  Identity matrix
}
\description{
  Identity matrix of a lavaanified model with same dimensions as
  \code{BETA(model)}.
}
\usage{
    II(model)
}
\arguments{
  \item{model}{
      A lavaanified model.
}
}
\value{
    An identity matrix.
}
\examples{
data(albert)
tmp <- lvnfy(albert.model, data = albert.litho.cov, n = 107)
II(tmp)
}
