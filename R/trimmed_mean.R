#' trimmed_mean
#'
#' Computes trimmed mean of a numeric vector based on s,l inputs
#'
#' @param x numeric vector
#' @param s lower trim
#' @param l upper trim
#' @author Samuel Soon
#' @export
#' @examples
#' trimmed_mean(1:11,1,1)

trimmed_mean <- function(x,s,l){
  xsort <- sort(x)
  ifelse(length(x) > s + l, mean(xsort[(s+1):(length(x)-l)]), stop("Length of x is too small"))
}
