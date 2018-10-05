
#named rawdata dataset as dfStates
dfStates <- rawdata

#STEPA1
#created function to clean the dataframe
MyMode <- function(dfStates)
{
  #removes first row because it is total for US, we do not need
  dfStates <- dfStates[-1,]
  #last row is Puerto Rico and should be removed
  num.row <- nrow(dfStates)
  dfStates <- dfStates[-num.row,]
  dfStates <- dfStates[,-1:-4]
  colnames(dfStates) <- c("stateName", "population", "popOver18","percentOver18")
  return(dfStates)
}
dfStates <- MyMode(dfStates)
#provides clean dataset
dfStates
