rm(list = ls())

df <- read.table("zad.txt")
h <- hist(df[,1])
x <- h$mids
y <- h$density
plot(x, y, log = "y", pch = 19)

xy.lm <- lm(log(y) ~ x)
summary(xy.lm)
b <- xy.lm$coefficients[1]
a <- xy.lm$coefficients[2]
y <- exp(a*x + b)
lines(x, y, col="red", lwd=3)

ks.test(df[,1], "pexp", -a)