complete <- function(directory, id = 1:332) 
{
    
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    
    files_full <- list.files(directory, full.names=TRUE)
    files_full
    
    
    dat <- data.frame()
    
    results <- data.frame()
    
    for (i in id) {
        
        #create dataframe of imported files
        dat <- read.csv(files_full[i])
        
        #remove NAs from each row to only get values
        nobs <- nrow(na.omit(dat))
        
        #Create another dataframe to capture and display results
        results <- rbind(results, data.frame(id=i,nobs=nobs))
        
    }

    ## return the data frame
    return(results)
    
}



complete <- function(directory, id = 1:332) 
{
    
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    
    files_full <- list.files(directory, full.names=TRUE)
    files_full

    
     dat <- data.frame()
     
     results <- data.frame()
    
        for (i in id) {
            
            #create dataframe of imported files
            dat <- read.csv(files_full[i])
            
            #remove NAs from each row to only get values
            nobs <- nrow(na.omit(dat))
            
            #Create another dataframe to capture and display results
            results <- rbind(results, matrix(c(id=i,nobs=nobs),  ncol=2))

        }
     colnames(results) <- c("id", "nobs")
     
     ## return the data frame
     return(results)

}

apple <- "red"
foo <- function(){
    apple <- "green"
    goo()
    }

goo <- function() print apple   



foo()
