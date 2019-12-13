rm(list = ls())

y <- sample(c(-1,1), 500, TRUE)
x <- c(0, cumsum(y))
t <- 1:501

plot(t, x)
s <- sapply(t, function(i) entropy(table(y[1:i])))
plot(t, s)
abline(h = entropy(c(0.5, 0.5)), col = "red")

y <- sample(c(-1,1), 500, TRUE, prob = c(0.8, 0.2))
x <- c(0, cumsum(y))
t <- 1:501

plot(t, x)
s <- sapply(t, function(i) entropy(table(y[1:i])))
plot(t, s)
abline(h = entropy(c(0.8, 0.2)), col = "red")