\name{Factor analysis}
\alias{factanal.prcomp}
\title{
  Factor analysis.
}
\description{
  Factor analysis using principal components as the extraction method.
}
\usage{
factanal.prcomp(covmat, nfactors = NULL)
}
\arguments{
  \item{covmat}{
    A covariance matrix.
  }
  \item{nfactors}{
    Number of factors.
  }
}
\seealso{
    \code{\link{princomp}} and \code{\link{rmnorm}}.
}
\examples{
data(albert)
factanal.prcomp(albert.litho.cov, NROW(albert.litho.cov))
}
