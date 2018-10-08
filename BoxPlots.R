
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
#illustrates the mean, max, min, median, first and third quartile 
#in a better visual. It is easier for me to distinguish that in the
