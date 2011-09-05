\name{fit.nlminb}
\alias{fit.nlminb}
\title{
  Fit a structural equation model using \code{\link{nlminb}}.
}
\description{
  This function tries to find the best set of parameter estimates of a
  structural equation model. It is very slow compared to
  \code{\link{sem}} in \code{\link{lavaan}} and does not handle equality
  constraints, multiple groups and intercepts. We made this to aid those who
  are learning SEM to understand the very basics of the technique.
  Please refer to \code{\link{lavaan}} for more serious usage.
}
\usage{
fit.nlminb(model, sigma, n, fun = "fml")
}
\arguments{
  \item{model}{
    A character vector containing a model specification as in
    \code{\link{lavaan}}.
}
  \item{sigma}{
    Population covariance matrix.
}
  \item{n}{
    Number of observations in the dataset used to build sigma.
}
  \item{fun}{
    Fitting function to be minimised by the optimiser. Should return a
    scalar.
}
}
\details{
  This function is coded to be as expressive as possible and speed has
  not been our aim here. Users should be able to understand at least
  some of what is going on internally by taking a peak at the code.

  The first thing this function does is to call lavaan to get a good set
  of starting values for the parameters to be estimated and use lavaan's
  internal representation of a SEM model as a starting point. After that, the
  chosen function calls an optimiser, \code{\link{nlminb}},  which will try to converge to a
  solution given a set of starting values for the parameter estimates and a population
  covariance matrix. Then, it will try to calculate standard errors from
  the Hessian matrix, z-values for each estimate and its correspondent
  p-values. The next step is to calculate the fit of the model to,
  finally, build a response.
}
\value{
  \item{model}{The internal representation of the model}
  \item{est}{The best set of parameter estimates}
  \item{se}{Standard errors}
  \item{z}{Z-values}
  \item{p}{P-values}
  \item{chisquared}{The maximum likelihood chi-squared}
  \item{df}{The number of degrees of freedom}
  \item{n}{The number of observations}
  \item{pval}{The significance of the chi-squared statistics}
  \item{estimator}{The fitting function used}
  \item{sigma.hat}{The model-implied covariance matrix}
  \item{sigma}{The population covariance matrix}
}

\seealso{
  \code{\link{sem}} in \code{\link{lavaan}} is much faster and converges to a
  unique solution more frequently. It can also handle a much more
  diverse range of models, including those with multiple groups,
  equality constraints, growth models and so on.
}
\examples{

\dontrun{
data(albert)
cat(albert.model)
fit <- fit.nlminb(albert.model, albert.litho.cov, 107)
summary(fit)
}

}
