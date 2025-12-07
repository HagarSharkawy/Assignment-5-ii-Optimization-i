#Problem 1
# Load package
library(lpSolve)

# Objective
obj <- c(42, 50, 66, 52, 60, 44)

# Constraints
A <- matrix(c(
  0,0,1,0,1,1,  
  1,0,1,1,1,0,  
  1,1,1,1,0,1,   
  0,1,0,0,1,0,   
  0,1,1,1,0,1    
), nrow = 5, byrow = TRUE)

dir <- rep(">=", 5)
rhs <- rep(1, 5)


sol1 <- lp("min", obj, A, dir, rhs, binary.vec = 1:6)

sol1
sol1$solution
sol1$objval

#Problem 2
# Objective
obj2 <- c(1,1,1,1,1,1)

# Constraints
A2 <- matrix(c(
  1,0,0,1,0,0,   
  0,1,0,1,0,1,   
  0,0,1,0,1,0,   
  1,1,0,1,0,1,   
  0,0,1,0,1,1,   
  0,1,0,1,1,1    
), nrow = 6, byrow = TRUE)

dir2 <- rep(">=", 6)
rhs2 <- rep(1, 6)


sol2 <- lp("min", obj2, A2, dir2, rhs2, binary.vec = 1:6)

sol2
sol2$solution
sol2$objval

