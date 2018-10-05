
#named rawdata dataset as dfStates
dfStates <- rawdata

#STEPA1
#created function to clean the dataframe
MyMode <- function(states)
{
  #removes first row because it is total for US, we do not need
  states <- states[-1,]
  #last row is Puerto Rico and should be removed
  num.row <- nrow(states)
  states <- states[-num.row,]
  #removes first 4 columns
  states <- states[,-1:-4]
  #changes the name of remaining columns
  colnames(states) <- c("stateName", "population", "popOver18","percentOver18")
  return(states)
}
dfStates <- MyMode(rawdata)
#provides clean dataset
str(dfStates)
