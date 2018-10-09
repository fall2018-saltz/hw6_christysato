
library("ggplot2")

#STEPC7
#created a new dataframe called numMurders that shows the stateName and the corresponding Murder rate for that state
numMurders <- data.frame(USArrestsdf$stateName, USArrestsdf$Murder)
#shows two columns, left showing state names and the right column shows the corresponding Murder Rate
numMurders

#STEPC8
#created a barchart of number of murders for each state using geomcol function
m_bar <- ggplot() +geom_col(data=numMurders, aes(x=USArrestsdf$stateName, y= USArrestsdf$Murder)) #credit: https://rpubs.com/sediaz/geom_col_1
m_bar

#STEPC9
#created a new barchart with same information, but rotated the x axis so that the labels are readable, and the graph title is Total Murders
m_barClean <- m_bar + theme(axis.text.x = element_text(angle=90, hjust = 1))  #credit: https://stackoverflow.com/questions/1330989/rotating-and-spacing-axis-labels-in-ggplot2
m_barClean <- m_barClean + ggtitle("Total Murders") + xlab("State Name") + ylab("Murder Rate")
m_barClean

#STEPC10
#created a function that returns the clean barchart, but also sorted by murder rate from smallest to largest (left to right)
MyMode <- function(barchart)
{
  USArrestsdf$stateName <- factor(USArrestsdf$stateName, levels = USArrestsdf$stateName[order(USArrestsdf$Murder)]) 
  m_barSorted <- ggplot() + geom_col(data=numMurders, aes(x=USArrestsdf$stateName, y= USArrestsdf$Murder)) +
    ggtitle("Total Murders") + xlab("StateName") + ylab("MurderRate") +
    theme(axis.text.x = element_text(angle=90, hjust = 1)) 
  return(m_barSorted)
}
m_barSorted <- MyMode(m_barSorted)

#STEPC11
MyMode18 <- function(barchart)
{
  USArrestsdf$stateName <- factor(USArrestsdf$stateName, levels = USArrestsdf$stateName[order(USArrestsdf$Murder)]) 
  m_percent18 <- ggplot(USArrestsdf, aes(x=stateName, y= Murder)) + geom_bar(aes(fill = percentOver18), stat = "identity") +
    ggtitle("Total Murders") + xlab("StateName") + ylab("MurderRate") +
    theme(axis.text.x = element_text(angle=90, hjust = 1))
  return(m_percent18)
}
m_percent18 <- MyMode18(m_percent18)
m_percent18
