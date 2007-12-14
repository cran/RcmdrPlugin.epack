predar3 <- function(x,fore1=1) {

z <- predict(x,n.ahead=fore1)

zlow <- z$pred - 1.96*z$se
zup <- z$pred + 1.96*z$se

zz <- data.frame(pred=z$pred,lower=zlow,upper=zup) 
return(zz)
}
