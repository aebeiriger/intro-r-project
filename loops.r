# loops
# by Ana Beiriger


analyze <- function(filename){
  # find the mean inflammation per day and plot
  dat <- read.csv(filename, header = F)
  mean_day_inflammation <- apply(dat,2,mean)
  plot(mean_day_inflammation, main = filename)
}

dir("data/")

for(i in c(1,3,5)){
  print(i+1)
}

inflammation_files <- c(
  "data/inflammation-01.csv",
  "data/inflammation-02.csv",
  "data/inflammation-03.csv",
  "data/inflammation-04.csv",
  "data/inflammation-05.csv"
)

for(filename in inflammation_files){
  analyze(filename)
}


all_inflammation_files <- dir(
  path = "data",
  full.names = T,
  pattern = "infllammation-*csv"
)


for(filename in all_inflammation_files){
  analyze(filename)
}



sum_x <- 0
for(i in x){
  cat("i:", i, "\n")
  cat("sum_x:", sum_x, "\n")
  sum_x <- sum_x+i
}



exponentiate <- function(x,y){
  result <- 1
  for(i in 1:y){
    result <- result*x
  }
  return (result)
}



product <- function(x,y){
  result <- 0
  for(i in 1:y){
    result <- result + x
  }
  return(result)
}



print_N <- function(N){
  for(i in 1:N){
    print(i)
  }
}



dat <- read.csv("data/inflammation-01.csv", header = F)
patient_mean <- apply(dat,2,mean)


#take the mean of each column
patient_mean_function <- function(filename){
  #read file filename in the dataframe dat
  dat <-read.csv(filename, header = F)
  #dim(dat) is a length 2 vector c(row_number, col_number)
  rows_cols <- dim(dat)
  #take the second element to get the column number
  dat_cols <- rows_cols[2]
  #make an empty vector with length equal to the number of columns
  means <- numeric(dat_cols)
  #run loop 'dat_cols' times, taking the mean of the i-th column    #at each step
  for(i in 1:dat_cols){
    #dat[,i] is the i-th column of dat
    means[i] <- mean(dat[,i])
  }
  plot(means,main = filename)
}



# plot avg inflammation of all patients over each day
day_mean_function <- function(filename){
  # class of a row is a data.frame, so need to transform into a     # matrix before taking the mean across row
  dat <- data.matrix(read.csv(filename, header = F))
  rows_cols <- dim(dat)
  dat_rows <- rows_cols[1]
  means_day <- numeric(dat_rows)
  for(i in 1:dat_rows){
    means_day[i] <- mean(dat[i,])
  }
  plot(means_day,main = filename)
}







