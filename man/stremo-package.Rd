\name{stremo-package}
\alias{stremo-package}
\alias{stremo}
\docType{package}
\title{
  Learning structural equation modeling.
}
\description{
  Functions and toy data to play around whilst learning structural
  equation modeling. xx
}
\details{
\tabular{ll}{
Package: \tab stremo\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-09-05\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
}
\author{
  Gustavo Carvalho, Marco Batalha, and Owen Petchey.

  Maintainer: Gustavo Carvalho <gustavo.bio@gmail.com>
}
\references{
  Shipley, B. 2002. Cause and Correlation in Biology. Cambridge
  University Press.

  Mueller, R. O. 1995. Basic Principles of Structural Equation Modeling.
  Springer Texts in Statistics.
}
\keyword{ package }
\examples{
data(albert)
cat(albert.model)
albert.litho.cov
fit <- fit.nlminb(albert.model, albert.litho.cov, 107)
}
