% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpBarycentric.R
\name{interpBarycentric}
\alias{interpBarycentric}
\title{Barycentric Interpolation}
\usage{
funNew <- interpBarycentric(x, fun, xNew)
}
\arguments{
\item{x}{points in which is fun given (for more accuracy use chebpoints)}

\item{fun}{function values of fun given at points x}

\item{xNew}{point in which fun will be estimated}

\item{isChebPts}{default value TRUE}
}
\value{
function fun evaluated in points xNew
}
\description{
\code{interpBarycentric} evaluates (interpolates) function values funNew at
given points xNew by barycentric interpolation from function values fun
given at chebpoints x.
}
\seealso{
\url{https://en.wikipedia.org/wiki/Barycentric_coordinate_system}
}

