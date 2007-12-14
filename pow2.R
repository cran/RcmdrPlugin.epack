pow2 <- function(x,lam1=1) {
  if(any(x)<=0)stop("Nonnegative values; transformation not possible")
  y <- exp(lam1*log(x))
  return(y)
}
