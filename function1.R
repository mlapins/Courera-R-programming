addf <- function (x, y){
  
  x + y
  
}

above10 <- function(x){
  
  use <- x > 10
  
  x[use]
  
}


for (i in 1:5) {print(i)}

#x = dataframe and loops through to get mean of column
columnmean <- function(x, removeNA = TRUE){
  
  #get number of columns
  nc <- ncol(x)
  
  #initialise empty vector and fill as loop through cols
  means <- numeric(nc)
  
  for (i in 1:nc){
    
    means[i] <- mean(x[,i], na.rm = removeNA)
  }
  
  means
  
}

q2 <- function(x){
  if(x > 5) {
    x <- 0
  }
}


f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}