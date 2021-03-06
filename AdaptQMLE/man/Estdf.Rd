% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Estdf.R
\name{Estdf}
\alias{Estdf}
\title{Estimation of degree freedom \eqn{d_f} using tQMLE}
\usage{
Estdf(e)
}
\arguments{
\item{e}{residuals that were caculated by estimate parameters}
}
\value{
Return value is the estimator of degree of freedom when the \eqn{\eta_{f} = 1}, which 
         means the asymptotic distribution of sample residues.
}
\description{
This function is the crux of whole adptive quasi maximum likelihood estimation.
It estimates degree of freedom \eqn{d_f} from the model residues under specified
assumption of distribution family of error. So the input is only model residues.
}
\examples{
# need revisions.
}

