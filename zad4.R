rm(list = ls())

x = rep(1:20, time = 20)
y = rep(1:20, each = 20)

df <- data.frame(a = x, b = y, c = x*y)
g <- ggplot(df)
g + 
  geom_point(aes(y = a, x = b, colour = c), shape = 15, size = 6) + 
  scale_colour_continuous(low="red", high="green") 
g +
  geom_histogram(aes(x=c))