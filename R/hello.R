#' MultMean
#'
#' @param x numeric
#' @param z numeric
#'
#' @return numeric
#' @export
#' @import glue
#' @importFrom glue glue
#' @examples
#' a <- c(8,97,8,3)
#' z <- 2
#' MultMean(a,z)

MultMean <- function(x,z=1){
  y <- mean(x) * z
  return(y)
}

#' Sample100
#'
#' @param x some data
#'
#' @return subsample of 100 items
#' @export
#'
#' @examples

Sample100 <- function(x){
  y <- sample(x,100)
  z <- compositions::clr(y)
  return(z)
}



