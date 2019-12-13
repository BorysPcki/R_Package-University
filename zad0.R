rm(list = ls())
ramka <- data.frame(liczby = 1:10, litery = letters[1:10], logiczne = 0 == 1:10%%2)
ramka[c(1,3),]
ramka[,2]
ramka$litery
L <- list(x = 10:1, y = c("a","z","g"), z = c(T, F))