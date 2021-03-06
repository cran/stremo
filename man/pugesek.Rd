\name{pugesek}
\alias{pugesek}
\alias{bumpus}
\alias{bumpus.log}
\alias{pugesek.onefactor.model}
\alias{pugesek.threefactors.model}
\docType{data}
\title{
  Bumpus house sparrow data and model.
}
\description{
  Pugesek and Tomer reanalyse this classic dataset using structural
  equation modeling.
}
\usage{
data(pugesek)
bumpus
bumpus.log
pugesek.onefactor.model
pugesek.threefactors.model
}
\format{
  Two data frames, one untransformed and one log-transformed, with 136
  observations on 13 variables. Also, two character vectors with the
  syntaxes of two of the models described in the paper.
}
\note{
  According to the authors, they used log-transformed data in their
  analyses, so there are two datasets: \code{bumpus} and
  \code{bumpus.log}. Not all traits measured were used by the authors in
  the paper. All analyses used sex as the grouping variable. The
  one-factor model is in page 392, figure 3 and table 1. The
  three-factor model is in page 393 and 394, figure 5 and table 2. The
  survival model in page 395 could not be fitted as there is no support
  for categorical variables in either \code{\link{lavaan}} or
  \code{\link{stremo}}.

  Three-factor models 2 and 3 converge and we get somewhat similar
  loadings, but there are negative variances, which indicate Heywood
  cases. This might be caused by the equality constraints we imposed in
  some of the loadings to try to mimic the results from the paper.
}
\source{
  Article:

  \url{https://springerlink3.metapress.com/content/m48860525r801047/resource-secured/?target=fulltext.pdf}

  Data:

  \url{http://fm1.fieldmuseum.org/aa/staff_page.cgi?staff=lowther&id=432}
}
\references{
  Pugesek, BH and Tomer, A. 1996. The Bumpus house sparrow data: a
  reanalysis using structural equation models. Evolutionary Ecology 10:
  387-404.
}
\examples{
\dontrun{
data(pugesek)
cat(pugesek.onefactor.model)
cat(pugesek.threefactors.model)

pugesek.onefactor.1 <- sem(pugesek.onefactor.model, data = bumpus.log, fixed.x = FALSE, group =
                           "sex", std.lv = 1, estimator = "MLM")
pugesek.onefactor.2 <- sem(pugesek.onefactor.model, data = bumpus.log, fixed.x = FALSE, group =
                           "sex", std.lv = 1, group.equal = "loadings")
pugesek.onefactor.3 <- sem(pugesek.onefactor.model, data = bumpus.log, fixed.x = FALSE, group =
                           "sex", std.lv = 1, group.equal = c("loadings",
                                                          "residuals"))
pugesek.threefactors.1 <- sem(pugesek.threefactors.model, data = bumpus.log, fixed.x = FALSE, group =
                              "sex", orthogonal = TRUE,
                              std.lv = 1)
pugesek.threefactors.2 <- sem(pugesek.threefactors.model, data = bumpus.log, fixed.x = FALSE, group =
                              "sex", orthogonal = TRUE,
                              std.lv = 1, group.equal = c("loadings"))
pugesek.threefactors.3 <- sem(pugesek.threefactors.model, data = bumpus.log,
                              fixed.x = FALSE, std.lv = TRUE, orthogonal = TRUE)

summary(pugesek.onefactor.1, standardize = TRUE)
summary(pugesek.onefactor.2, standardize = TRUE)
summary(pugesek.onefactor.3, standardize = TRUE)

summary(pugesek.threefactors.1, standardize = TRUE)
summary(pugesek.threefactors.2, standardize = TRUE)
summary(pugesek.threefactors.3, standardize = TRUE)
}
}
\keyword{datasets}
