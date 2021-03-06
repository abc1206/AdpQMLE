#' Generating function for single linear model y = a + b*x.
#'
#' @title Single linear model y = a + b*x.
#'
#' @param intercept The intercept of single linear model.
#' @param slope The parameter b, which is the slope of y = a + b*x.
#' @param noise.variance The variance of error series.
#' @param x The depedent variable.
#' @param dis.error Distribution of error, student's t or normal.
#' @param dft The degree of freedom if error was specified as student's t.
#'
#' @return A data frame contains x, y and error series.
#' @export
#'
gen.lin <- function(intercept, slope, noise.variance, x, dis.error = c("rt", "rnorm"), dft) {
  # Make up y by adding Gaussian, or student's t noise to the linear function
  dis.error <- match.arg(dis.error)
  if (dis.error == "rt"){
    e <-  rt(length(x), dft)
  } else if (dis.error == "rnorm") {
    e <- rnorm(length(x), 0, sd=sqrt(noise.variance))
  }
  y <- rep(intercept,length(x)) + x %*% as.matrix(slope) + e
  return(data.frame(x=x, y=y, e = e))
}
