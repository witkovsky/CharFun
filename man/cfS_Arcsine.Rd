% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfS_Arcsine.R
\name{cfS_Arcsine}
\alias{cfS_Arcsine}
\title{Characteristic function of symmetric zero-mean Arcsine distribution}
\usage{
cfS_Arcsine(t)
}
\arguments{
\item{t}{numerical values (number, vector...)}
}
\value{
characteristic function cf(t) of the Arcsine distribution
}
\description{
cfS_Arcsine(t) evaluates the characteristic function cf(t) of
the symmetric zero-mean Arcsine distribution on the interval
(-1,1) (U-shaped distribution with mean = 0 and variance = 1/2
\deqn{cfS_Arcsine(t) = besselj(0,t)}
}
\examples{
## EXAMPLE1 (CF of the symmetric Arcsine distribution on (-1,1))
t <- seq(-50, 50, length.out = 501)
plotGraf(function(t) cfS_Arcsine(t), t, title = "CF of the symmetric Arcsine distribution on (-1,1)")

## EXAMPLE2 (PDF/CDF of the symmetric Arcsine distribution on (-1,1))
cf <- function(t) cfS_Arcsine(t)
x <- seq(-1, 1, length.out = 501)
prob <- c(0.9, 0.95, 0.99)
xRange <- 2
N <- 2^12
option <- list()
option$dt <- 2*pi/xRange
result <- cf2DistGP(cf, x, prob, option, N = N)
}
\seealso{
For more details see WIKIPEDIA:
\url{https://en.wikipedia.org/wiki/Arcsine_distribution}

Other Characteristic Function: \code{\link{cfC_vonMises}},
  \code{\link{cfE_Empirical}}, \code{\link{cfN_Binomial}},
  \code{\link{cfN_Delaporte}},
  \code{\link{cfN_GeneralizedPoisson}},
  \code{\link{cfN_Geometric}},
  \code{\link{cfN_Logarithmic}},
  \code{\link{cfN_NegativeBinomial}},
  \code{\link{cfN_Poisson}},
  \code{\link{cfN_PolyaEggenberger}},
  \code{\link{cfS_Beta}}, \code{\link{cfS_Gaussian}},
  \code{\link{cfS_Rectangular}},
  \code{\link{cfS_StudentT}},
  \code{\link{cfS_Trapezoidal}},
  \code{\link{cfS_Triangular}}, \code{\link{cfX_Beta}},
  \code{\link{cfX_ChiSquaredNC}},
  \code{\link{cfX_ChiSquared}},
  \code{\link{cfX_Exponential}}, \code{\link{cfX_Gamma}},
  \code{\link{cfX_InverseGamma}},
  \code{\link{cfX_LogNormal}}, \code{\link{cfX_Normal}},
  \code{\link{cfX_PearsonV}},
  \code{\link{cfX_Rectangular}},
  \code{\link{cfX_Triangular}}

Other Continuous Probability distribution: \code{\link{cfS_Beta}},
  \code{\link{cfS_Gaussian}},
  \code{\link{cfS_Rectangular}},
  \code{\link{cfS_StudentT}},
  \code{\link{cfS_Trapezoidal}},
  \code{\link{cfS_Triangular}}, \code{\link{cfX_Beta}},
  \code{\link{cfX_ChiSquaredNC}},
  \code{\link{cfX_ChiSquared}},
  \code{\link{cfX_Exponential}}, \code{\link{cfX_Gamma}},
  \code{\link{cfX_InverseGamma}},
  \code{\link{cfX_LogNormal}}, \code{\link{cfX_Normal}},
  \code{\link{cfX_PearsonV}},
  \code{\link{cfX_Rectangular}},
  \code{\link{cfX_Triangular}}

Other Symetric Probability distribution: \code{\link{cfS_Gaussian}},
  \code{\link{cfS_Rectangular}},
  \code{\link{cfS_StudentT}},
  \code{\link{cfS_Trapezoidal}},
  \code{\link{cfS_Triangular}}
}

