
#STEPB4
library("ggplot2")

#make histogram for population
#creates ggplot called g, using the dataframe USArrestsdf, and grabbing the x axis as population
g <- ggplot(USArrestsdf, aes(x=population))
#make histogram with bars being white with black outline
g <- g + geom_histogram(binwidth = 5000000, color="black", fill="white")
#add a title to the histogram
g <- g + ggtitle("Population of States")
g

#make histogram for murder rate
#create a ggplot called m, using the dataframe USArrestsdf, and grabbing the x axis as Murder
m <- ggplot(USArrestsdf, aes(x=Murder))
#make histogram with bars being white with black outline
#had to change the binwidth, because did not show anything when it was equal to 5000000
m <- m + geom_histogram(binwidth = 2, color="black", fill="white")
#add a title to the histogram
m <- m + ggtitle("Murder Rate")
m

#make histogram for assault
#create a ggplot called a, using the dataframe USArrestsdf, and grabbing the x axis as Assault
a <- ggplot(USArrestsdf, aes(x=Assault))
#make histogram with bars being white with black outline
a <- a + geom_histogram(binwidth = 10, color="black", fill="white")
#add a title to the histogram
a <- a + ggtitle("Assault Rate")
a
