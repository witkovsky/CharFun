% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfN_Binomial.R
\name{cfN_Binomial}
\alias{cfN_Binomial}
\title{Characteristic function of Binomial distribution}
\usage{
cfN_Binomial(t, n, p)
cfN_Binomial(t, n, p, cfX)
}
\arguments{
\item{t}{numerical values (number, vector...)}

\item{n}{number of trials}

\item{p}{success probability, \eqn{0 \le p \le 1}, default value p = 1/2}

\item{cfX}{function}
}
\value{
characteristic function cf(t) of the Binomial distribution with n trials and p success probability
}
\description{
cfN_Binomial(t, n, p) evaluates the characteristic function cf(t) of the
Binomial distribution with the parameters n (number of trials, n in N)
and p (success probability, p in [0,1]), i.e.
cfN_Binomial(t, n, p) = (1 - p + p*exp(1i*t))^n

cfN_Binomial(t, n, p, cfX) evaluates the compound characteristic function
cf(t) = cfN_Binomial(-1i*log(cfX(t)), n, p), where cfX is function
handle of the characteristic function cfX(t) of a continuous distribution
and/or random variable X.

Note that such CF is characteristic function of the compound distribution,
i.e. distribution of the random variable Y = X_1 + ... + X_N, where X_i ~ F_X
are i.i.d. random variables with common CF cfX(t), and N ~ F_N is
independent RV with its CF given by cfN(t).
}
\examples{
## EXAMPLE1 (CF of the Binomial distribution with n = 25, p = 0.3)
n <- 25
p <- 0.3
t <- seq(-15, 15, length.out = 1001)
plotGraf(function(t) cfN_Binomial(t, n, p), t, title = "CF of the Binomial distribution with n = 25, p = 0.3")

## EXAMPLE2 (CF of the compound Binomial-Exponential distribution)
n <- 25
p <- 0.3
lambda <- 10
cfX <- function(t) cfX_Exponential(t, lambda)
t <- seq(-10, 10, length.out = 501)
plotGraf(function(t) cfN_Binomial(t, n, p, cfX), t, title = "CF of the compound Binomial-Exponential distribution")

## EXAMPLE3 (PDF/CDF of the compound Binomial-Exponential distribution)
n <- 25
p <- 0.3
lambda <- 5
cfX <- function(t) cfX_Exponential(t, lambda)
cf <- function(t) cfN_Binomial(t, n, p, cfX)
x <- seq(0, 5, length.out = 101)
prob <- c(0.9, 0.95, 0.99)
result <- cf2DistGP(cf, x, prob, isCompound = TRUE)
}
\seealso{
For more details see WIKIPEDIA:
\url{https://en.wikipedia.org/wiki/Binomial_distribution}

Other Characteristic Function: \code{\link{cfC_vonMises}},
  \code{\link{cfE_Empirical}}, \code{\link{cfN_Delaporte}},
  \code{\link{cfN_GeneralizedPoisson}},
  \code{\link{cfN_Geometric}},
  \code{\link{cfN_Logarithmic}},
  \code{\link{cfN_NegativeBinomial}},
  \code{\link{cfN_Poisson}},
  \code{\link{cfN_PolyaEggenberger}},
  \code{\link{cfS_Arcsine}}, \code{\link{cfS_Beta}},
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

Other Discrete Probability Distribution: \code{\link{cfN_Delaporte}},
  \code{\link{cfN_GeneralizedPoisson}},
  \code{\link{cfN_Geometric}},
  \code{\link{cfN_Logarithmic}},
  \code{\link{cfN_NegativeBinomial}},
  \code{\link{cfN_Poisson}},
  \code{\link{cfN_PolyaEggenberger}}
}

