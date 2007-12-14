forerr <- function(xact,xfore) {
  n1 <- length(xact)
  n2 <- length(xfore)
  if(n1 !=n2)stop("Lengths of vectors are not equal")
  y1 <- sum(abs(xact-xfore))/n1
  y2 <- sum((xact-xfore)^2)/n1
  z <- list(mad=y1,mse=y2)
  return(z)
}

