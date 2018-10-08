
library("ggplot2")
#make histogram for population
#creates ggplot called g, using the dataframe USArrestsdf, and grabbing the x axis as population
g <- ggplot(USArrestsdf, aes(x=population))
#make histogram with bars being white with black outline
g <- g + geom_histogram(binwidth = 5000000, color="black", fill="white")
#add a title to the histogram
g <- g + ggtitle("Population of States")
g
