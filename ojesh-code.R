## Que 2

library(lpSolveAPI) # Library for LP
ojesh_ff <- make.lp(9,9) #defining the 9 variables and 9 constrains 
lp.control(ojesh_ff, sense = "maximize") 

set.objfn(ojesh_ff, c(15,	10,	25,	11,	6,	21,	15,	10,	25)) # bjective function,all the coefficient of the 9 variables

# Using set.row function to set the constraints which are from 1 to 9 and the second part is the coefficient of variables and the third is the index position of there variable
set.row(ojesh_ff, 1, c(0.5,-0.5,-0.5), indices = c(1,4,7))
set.row(ojesh_ff, 2, c(-0.4,0.6,-0.4), indices = c(1,4,7))
set.row(ojesh_ff, 3, c(0.4,-0.6,-0.6), indices = c(2,5,6))
set.row(ojesh_ff, 4, c(-0.4,0.6,-0.4), indices = c(2,5,8))
set.row(ojesh_ff, 5, c(0.6,-0.4,-0.4), indices = c(3,6,9))
set.row(ojesh_ff, 6, c(-0.3,0.7,-0.3), indices = c(3,6,9))
set.row(ojesh_ff, 7, c(1,1,1), indices = c(1,4,7))
set.row(ojesh_ff, 8, c(1,1,1), indices = c(2,5,8))
set.row(ojesh_ff, 9, c(1,1,1), indices = c(3,6,9))

# setting the left right hand side of the constraints with the given conditions from the questions 
set.rhs(ojesh_ff, c(0,	0,	0,	0,	0,	0,	4200, 3200, 3500)) 

# setting the constraints type like whether it is equal, at most or at least

set.constr.type(ojesh_ff, c(">=",	">=",	">=", ">=",	">=",	">=",	"<=",	"<=",	"<="))

set.type(ojesh_ff, c(1:9),"int") # Setting the output type as integer
set.bounds(ojesh_ff, lower = rep(0, 9), upper = rep(Inf, 9)) # Setting the lower and upper values 
solve(ojesh_ff) # checking if the model has a solution or not - if its 0 then a solution exists and if no then no solution exists

#get.objective give the optimal value of the objective function
max_profit<-get.objective(ojesh_ff)
max_profit

# getting the values for all the 9 variables which satisfies the condition
var_9<-get.variables(ojesh_ff)
var_9

# check constraints to see whether they satisfy all conditions
constr_9<-get.constraints(ojesh_ff)
constr_9

# Que 3 Two player zero sum game

# Player Giant's game #

library(lpSolveAPI)

lprec <- make.lp(0, 6)

lp.control(lprec, sense= "maximize") #  can change sense to  "minimize"



set.objfn(lprec, c(0, 0, 0, 0, 0, 1)) # x1 x2 x3 x4 x5 v


add.constraint(lprec, c(-1, -1, -1, -1, 1, 1), "<=", 0) #1

add.constraint(lprec, c(1, -1, -1, -1, 1, 1), "<=", 0) #2

add.constraint(lprec, c(1, 1, -1, -1, 1, 1), "<=", 0) #3

add.constraint(lprec, c(1, 1, 1, -1, 1, 1), "<=", 0) #4

add.constraint(lprec, c(1, 1, 1, 1, -1, 1), "<=", 0) #5

add.constraint(lprec, c(1, 1, 1, 1, 1, 0), "=", 1) #6

set.bounds(lprec, lower = c(0, 0, 0, 0, 0, -Inf))

RowNames <- c("Row1", "Row2", "Row3","Row4","Row5", "Row6")

ColNames <- c("x1", "x2", "x3", "x4", "x5", "v")

dimnames(lprec) <- list(RowNames, ColNames)



solve(lprec) # http://lpsolve.sourceforge.net/5.5/solve.htm

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)


lprec 

#
