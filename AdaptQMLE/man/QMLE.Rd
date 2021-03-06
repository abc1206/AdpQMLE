% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QMLE.R
\name{QMLE}
\alias{QMLE}
\title{Quasi-maximum likelihood estimation with student's t innovation}
\usage{
QMLE(series, LogLFunc = c("LogL_GARCH_Norm", "LogL_GARCH_t",
  "LogL_GARCH_PIV"), order = c(1, 1), dfest, params.PIV)
}
\arguments{
\item{series}{The orginal time series, which need to be fitted as GARCH(1,1)}

\item{LogLFunc}{is the log likelihood function of GARCH(p,q) with student's t innovation. The model is
setted as \eqn{\sigma^{2}_{t|t-1}=\omega+\sum_{i=1}^{q}\alpha_{i}u^{2}_{t-i}+\sum_{j=1}^{p}\beta_{j}\sigma^{2}_{t-j}}
This input can be changed according to assumption. Default setting is normal distributed innovation.}

\item{order}{\eqn{p}: order for GARCH terms, \eqn{q}: order for ARCH terms.}

\item{dfest}{is specified degree of freedom of innovation.}

\item{params.PIV}{vector/list of length 4 containing parameters m, nu, location, scale for Pearson 
type IV distribution (in this order!).}
}
\value{
A list.
}
\description{
tQMLE is a function that can be used to estimate parameters of GARCH(p,q) with student's t innovation by
specified log-likelihood estimation as "LogL_GARCH_t" and "dfest"(degree of freedom). It also includes
QMLE other
}
\examples{
# If the prespecified degree of freedom of student's t innovation is 4, 
# then the tQML estimator will be:
xx <- GARCH_Gene(alpha = c(0.1, 0.2, 0.3), beta = 0.3, n = 1000, rnd = "rt", df.t = 4)
y <- xx$x
plot(y, type = "l")
# Two bad estimation methods
library(tseries)
x.arch <- garch(y, order = c(2,1)) # Fit GARCH(2,1)
est1 <- MLE(y = y, LogLFunc = "LogL_GARCH_Norm", order = c(2,1))
est1
# Better estimation methods with specified innovation.
est2 <- QMLE(series = y, LogLFunc = "LogL_GARCH_t", dfest = 4)
est2
}

