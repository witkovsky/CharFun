## EXAMPLE1 (CF of the ChiSquared distribution with df = 1, npc = 2)
  df <- 1
  npc <- 2
  t <- seq(-50, 50, length.out = 501)
  plotGraf(function(t) cfX_ChiSquaredNC(t, df, npc), t, title = "CF of the Chi-squared distribution with df = 1, npc = 2")

## EXAMPLE2 (PDF/CDF of the ChiSquared distribution with df = 3, npc = 2)
  df <- 3
  npc <- 2
  prob <- c(0.9, 0.95, 0.99)
  cf <- function(t) cfX_ChiSquaredNC(t, df, npc)
  x <- seq(-0, 15, length.out = 101)
  result <- cf2DistGP(cf, x, prob, N = 2^14)

## EXAMPLE3 (PDF/CDF of the compound Binomial-ChiSquared distribution)
  n <- 25
  p <- 0.3
  df <- 3
  npc <- 2
  prob <- c(0.9, 0.95, 0.99)
  cfX <- function(t) cfX_ChiSquaredNC(t, df, npc)
  cf <- function(t) cfN_Binomial(t, n, p, cfX)
  x <- seq(-0, 80, length.out = 501)
  result <- cf2DistGP(cf, x, prob, isCompound = TRUE)

