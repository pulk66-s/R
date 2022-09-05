library(ggplot2)

df <- data.frame (
    time = 1:10,
    value = 1:10
)

ggplot(df, aes(x=time, y=value ^ 2)) + geom_point()
