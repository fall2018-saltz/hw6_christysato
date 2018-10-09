
#activate ggplot2 package
library("ggplot2")

#STEPB5
#boxplot for population with y-axis as population
p_box <- ggplot(USArrestsdf, aes(y=population)) + 
  geom_boxplot(fill="slateblue")  #credit: https://www.r-graph-gallery.com/262-basic-boxplot-with-ggplot2/
p_box

#boxplot for murder
m_box <- ggplot(USArrestsdf, aes(y=Murder)) +
  geom_boxplot(fill="slateblue")
m_box

#STEPB6
#the boxplot was more helpful than the histogram because the boxplot
#illustrates the mean, max, min, median, first and third quartile 
#in a better visual. It is easier for me to distinguish that in the
#boxplot, rather than the histogram.
