rm(list = ls())

r <- rnorm(1000000, 1, 2.5)
h <- hist(r)

x <- seq(-10, 10, .1)
d <- dnorm(x, 1, 2.5)

png("zad2")
plot(h$mids, h$density, pch=19)
lines(x, d, col = "red")
dev.off()
