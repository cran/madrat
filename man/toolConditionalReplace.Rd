% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/toolConditionalReplace.R
\name{toolConditionalReplace}
\alias{toolConditionalReplace}
\title{toolConditionalReplace}
\usage{
toolConditionalReplace(x, conditions, replaceby = 0)
}
\arguments{
\item{x}{magpie object}

\item{conditions}{vector of conditions for values, that should be removed e.g. "is.na()", "< 0" (order matters)}

\item{replaceby}{value which should be used instead (can be a vector of same length as conditions as well)}
}
\value{
return changed input data
}
\description{
Sets values (NA, negative, ..) to value \code{replaceby}
}
\author{
Kristine Karstens
}
