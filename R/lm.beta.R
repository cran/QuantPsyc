"lm.beta" <-
function (MOD) 
{
b <- summary(MOD)$coef[-1,1]
sx <- sd(MOD$model[-1])
sy <- sd(MOD$model[1])
beta <- b * sx /  sy
return(beta)
}

