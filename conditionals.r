# conditionals
# by Ana Beiriger


num <- 3
if(num > 5){
  print("greater than 5")
} else {
  print("try again")
}


# Example
# Write function to return (0,-1,1) based on the sign of the input integer. Call the function "sign"

#sign <- function(num){
#  if (num > 0){
#    print ("1")
#  } 
#  else if (num < 0){
#    print ("-1")
#  } 
#  else{
#    print ("0")
#  }
#}



sign <- function(x){
  if (x > 0){
    return ("1")
  } 
  if (x < 0){
    return ("-1")
  } 
  else{
    return ("0")
  }
}



if((1 > 0) & (-1 > 0)){
  print("both parts are true")
} else{
  print("at least one part is false")
}


# vertical bar signifies "or"
if((1 > 0) | (-1 > 0)){
  print("at least one part is true")
} else{
  print("both parts are false")
}



# grabbing odd numbers
# use modulus %% (looks for remainder)
n100 <- seq(1,100)
getOdd <- function(v){
  return(v[v %% 2 == 1])
}



# Exercise
# Write a function which takes 3 arguments
# v is a vector of integers
# x is a number to check for even divisibility
# y is a second number to check for even divisibility
# output all numbers evenly divisible by both x and y
# use a for loop

double_div <- function(V,x,y){
  for (i in V){
    if ((i %% x == 0) & (i %% y == 0))
    print (i)
    else {
    print ("none")
  }
}
}



double_divv <- function(v,x,y){
  return(v[(v %% x == 0) & (v %% y == 0)])
}



# returning error "Error in if ((i%%x == 0) | (i%%y == 0)) print("one is false") else { : missing value where TRUE/FALSE needed"
double_div2 <- function(V,x,y){
  for (i in V){
    if ((i %% x == 0) & (i %% y == 0))
      print (i)
    if ((i %% x == 0) | (i %% y == 0))
      print ("one is false")
    else {
      print ("both are false")
    }
  }
}













