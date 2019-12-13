rm(list = ls())

v <- c(1,0,0)
u <- c(0,1,0)


cross.prod <- function(v, u) {
  I <- matrix(c(v[2], u[2], v[3], u[3]) , 2, 2)
  J <- matrix(c(v[1], u[1], v[3], u[3]) , 2, 2)
  K <- matrix(c(v[1], u[1], v[2], u[2]) , 2, 2)
  print(I)
  print(J)
  print(K)
  
  return(c(det(I), -det(J), det(K)))
}

cross.prod(v, u)