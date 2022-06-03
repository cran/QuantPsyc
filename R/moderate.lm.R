"moderate.lm" <-
  function (x,z,y,data,mc=FALSE)
  {
    
    if(!mc)
    {
      y <-  data %>% dplyr::select({{y}}) %>% purrr::reduce(c) 
      xvalues <- data %>% dplyr::select({{x}}) %>% purrr::reduce(c) 
      zvalues <- data %>% dplyr::select({{z}}) %>% purrr::reduce(c) 
      
      mcx <-  xvalues - mean(xvalues, na.rm = TRUE) 
      mcz <-  zvalues - mean(zvalues, na.rm = TRUE) 
    }
    else {
      y <-  data %>% dplyr::select({{y}}) %>% purrr::reduce(c) 
      mcx <- data %>% dplyr::select({{x}}) %>% purrr::reduce(c) 
      mcz <- data %>% dplyr::select({{z}}) %>% purrr::reduce(c) 
    }
    
    lm1 <- lm(y ~ mcx*mcz, na.action=na.omit)
    
    return(lm1)
  }

