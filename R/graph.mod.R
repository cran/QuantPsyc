"graph.mod" <-
  function(ssmod, x, y, data, title="",xlab="Centered X", ylab="Raw Y", ylimit=1.5, ...)
  {
    
    
    mcx <-  data %>% dplyr::select({{x}}) %>% purrr::reduce(c) %>% meanCenter()
    yvalue <- data %>% dplyr::select({{y}}) %>% purrr::reduce(c)
    
    yhi <- mean(yvalue, na.rm=TRUE) + ylimit*sd(yvalue, na.rm=TRUE)
    ylo <- mean(yvalue, na.rm=TRUE) - ylimit*sd(yvalue, na.rm=TRUE)
    
    plot(mcx,yvalue,main=title, xlab=xlab, ylab=ylab, ylim=c(ylo, yhi))
    abline(ssmod[1,1],ssmod[1,2],col=4)
    abline(ssmod[3,1],ssmod[3,2],col=2)
    abline(ssmod[2,1],ssmod[2,2],lty=2, col=1)
    legend (locator(1), c("zHigh", "zLow"), lty=1, col=c(4,2))
    
  }

