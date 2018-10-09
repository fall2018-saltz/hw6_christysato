
#change the order of factor levels by specifying the order explicitly, the order being the Murder rate
m_barSorted <- factor(m_barClean$stateName, levels = USArrestsdf$stateName[order(USArrestsdf$Murder)])
m_barSorted

m_barSorted <- ggplot() + geom_col(data=numMurders, aes(x=USArrestsdf$stateName, y= USArrestsdf$Murder)) +
  ggtitle("Total Murders") + xlab("StateName") + ylab("MurderRate") +
  theme(axis.text.x = element_text(angle=90, hjust = 1))
m_barSorted
