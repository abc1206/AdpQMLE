% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GARCH1_1wNorm.R
\name{GARCH1_1}
\alias{GARCH1_1}
\title{GARCH(1,1)}
\usage{
GARCH1_1(n, a, b)
}
\arguments{
\item{n}{Number of series}

\item{a}{Alpha vector, which includes intercept and alpha1}

\item{b}{Beta vector}
}
\value{
A list includes GARCH(1,1) series, error series and conditional variances series.
}
\description{
Example to generate GARCH(1,1) with normal innovation.
}
\examples{
ts1 <- GARCH1_1(100, a = c(0.5, 0.2), b = c(0.5))
# Attention: GARCH1_1 return a list!
plot(ts1$series, type = 'l')
}

