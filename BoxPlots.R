
library("ggplot2")
#STEPB5
#boxplot for population
p_box <- ggplot(p, aes(y=population)) + 
  geom_boxplot(fill="slateblue")
p_box
