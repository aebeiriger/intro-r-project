# functions in R
# by Ana Beiriger

# farenheit to kelvin conversion
fahr_to_kelvin <- function(temp){
  kelvin <- 273.15 + ((temp - 32) * (5/9))
  return(kelvin)
}


# kelvin to celsius conversion
kelvin_to_celsius <- function(t){
  celsius <- t - 273.15
  return(celsius)
}

# farenheit to celsius conversion
fahr_to_celsius <- function(temp){
  kelvin <- fahr_to_kelvin(temp)
  celsius <- kelvin_to_celsius(kelvin)
  return(celsius)
}



# exercise 
# define a function "fence" which takes 2 vectors and returns the second concatenated to the first

fence <- function(x,y){
  z <- c(y,x)
  return(z)
}

test_vec1 <- c(3,3,7)
test_vec2 <- c(4,6,2)

x <- 1:4
y <- 5:8



# here input_1 is 20 unless otherwise specified in the function call
# here input_2 = 20 sets a default, so unless a new number is specified in the call the function will assume 20

input_1 <- 20
mySum <- function(input_1, input_2 = 20){
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)
}



center <- function(data, desired){
  # return a new vector containing original data centered
  # around the desired value
  # example: center(c(1,2,3), 0) => c(-1,0,1)
  new_data <- (data - mean(data)) + desired
  return(new_data)
}

dat <- read.csv("data/inflammation-01.csv", header = F)
centered <- center(dat[,4],0)




# ---- Apply Functions ----
patient1 <- dat[1,]

avg_day_inflammation <- apply(dat,2,mean)

max_day_inflammation <- apply(dat,2,max)




# exercise: 
# create a function called "analyze" whose input is the name of a data set (e.g. "data/inflammation-01.csv") and output a plot of mean inflammation per day

analyze <- function(filename){
  # find the mean inflammation per day and plot
  dat <- read.csv(filename, header = F)
  mean_day_inflammation <- apply(dat,2,mean)
  plot(mean_day_inflammation)
}


