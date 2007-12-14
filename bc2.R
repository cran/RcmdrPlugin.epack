bc2 <- function(x,lam1=seq(-2,2,.1)) {
  require(MASS)
  if(any(x <=0)==T)stop("Negative values not permitted...no transformation")
  t1 <- 1:length(x)
  xxx <-boxcox(x~t1,lambda=lam1,plot=F)
  z <- xxx$x[xxx$y==max(xxx$y)]
  return(z)
  
}

