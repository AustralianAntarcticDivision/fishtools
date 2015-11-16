#' Confidence intervals for length at maturity
#'
#' Wald based intervals from
#' @param fit logistic regression model of length and maturity
#' @export
L50 <- function(fit) {
  est <- -summary(fit)$coef[1]/summary(fit)$coef[2]
  L.95 <- -summary(fit)$coef[1]/(summary(fit)$coef[2] - 1.96 * summary(fit)$coef[4])
  U.95 <- -summary(fit)$coef[1]/(summary(fit)$coef[2] + 1.96 * summary(fit)$coef[4])
  obj <- c(est, L.95, U.95)
  names(obj) <- c("est", "L.95", "U.95")
  obj
}
