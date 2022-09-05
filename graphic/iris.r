library(ggplot2)

print(typeof(iris))
print(iris)

ggplot(iris, aes(x=Sepal.Width, y=Sepal.Length, colour=Species)) +
    geom_point() +
    geom_smooth(colour="red") +
    geom_smooth(method="lm", colour="green") 

