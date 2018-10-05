
#named rawdata dataset as dfStates
dfStates <- rawdata

#STEPA1
#created function to clean the dataframe
MyMode <- function(dfStates)
{
  dfStates <- dfStates[-1,]
  num.row <- nrow(dfStates)
  dfStates <- dfStates[-num.row,]
  dfStates <- dfStates[,-1:-4]
  colnames(dfStates) <- c("stateName", "population", "popOver18","percentOver18")
  return(dfStates)
}
dfStates <- MyMode(dfStates)
#provides clean dataset
dfStates
