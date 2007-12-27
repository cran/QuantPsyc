"Make.Z" <-
function(x)
{

    x <- as.matrix(x)
    x <- sweep(x, 2, colMeans(x, na.rm=TRUE))
zx <- sweep(x,2,sd(x, na.rm=TRUE),"/")
return(zx)
}

