\name{stremo-package}
\alias{stremo-package}
\alias{stremo}
\docType{package}
\title{
  Learning structural equation modelling.
}
\description{
  Functions and toy data to play around whilst learning structural
  equation modelling. Some functions were heavily influenced by code in 
  \code{\link{lavaan}}. This package was built to aid the process of
  learning SEM. We tried to make the code very expressive and most
  functions are exposed to the end user. Refer to \code{\link{lavaan}}
  or 'OpenMX' for more serious analyses.
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
\dontrun{
data(albert)
cat(albert.model)
albert.litho.cov
fit <- fit.nlminb(albert.model, albert.litho.cov, 107)
}
}
