
library("ggplot2")

#STEPC7
#created a new dataframe called numMurders that shows the stateName and the corresponding Murder rate for that state
numMurders <- data.frame(USArrestsdf$stateName, USArrestsdf$Murder)
numMurders

#STEPC8
m_bar <- ggplot() +geom_col(data=numMurders, aes(x=USArrestsdf$stateName, y= USArrestsdf$Murder)) #credit: https://rpubs.com/sediaz/geom_col_1
m_bar

#STEPC9
m_bar <- m_bar + theme(axis.text.x = element_text(angle=90, hjust = 1))  #credit: https://stackoverflow.com/questions/1330989/rotating-and-spacing-axis-labels-in-ggplot2
m_bar <- m_bar + ggtitle("Total Murders")
m_bar
