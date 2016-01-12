## some useful generic functions


#' Error catching for try
#'
#' Error catchinig for use with the try function
#'
#' Written by Bill Venables
#' @param object evaluation of the try function
#' @export
OK <- function(object) !inherits(object, "try-error")



#' Sampling convenience function
#'
#' Sampling convenience function for bootstrapping
#'
#' Example in help for sample function
#' @param x object to sample
#' @param ... additional parameters for sample.int
#' @export
resample <- function(x, ...) x[sample.int(length(x), ...)]
