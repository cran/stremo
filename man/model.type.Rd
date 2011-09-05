\name{model.type}
\alias{model.type}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Displays the type of a structural equations model.
}
\description{
  This function returns the type of a structural equations model.
}
\usage{
model.type(model)
}
\arguments{
  \item{model}{
    A lavaanified model.
}
}
\value{
  A character string with the type of the model. It can be either "pa",
  "cfa", or "sem".
}
\examples{
data(albert)
model <- lvnfy(albert.model, data = albert.litho.cov, n
= 107)
model.type(model)
}
