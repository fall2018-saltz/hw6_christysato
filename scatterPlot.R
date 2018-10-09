
library("ggplot2")

#STEPD12
#created the scatter plot with x-axis as population, percentOver18 as y-axis, and size and color of dots as Murder rate
scatter_plot <- ggplot(USArrestsdf, aes(x=population, y=percentOver18)) +geom_point(aes(size=Murder, color=Murder))
scatter_plot

#credit: http://www.sthda.com/english/wiki/ggplot2-scatter-plots-quick-start-guide-r-software-and-data-visualization
