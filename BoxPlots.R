
library("ggplot2")

#STEPB5
#boxplot for population
p_box <- ggplot(USArrestsdf, aes(y=population)) + 
  geom_boxplot(fill="slateblue")
p_box

#boxplot for muder
m_box <- ggplot(USArrestsdf, aes(y=Murder)) +
  geom_boxplot(fill="slateblue")
m_box

#STEPB6
#the boxplot was more helpful than the histogram because the boxplot
