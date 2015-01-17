## Read the files each at tym and count the number of complete cases

+ first read file in loop
+ second store the na.rm TRUE cases of each id and store in an object

complete <- function(directory,id)
{
  files_list <- list.files(directory, full.names=TRUE)   #creates a list of file
  #creates an empty data frame
  
  dat <- data.frame() 
  for (i in id) {                  #creates an empty data frame

    dat <- rbind(dat, read.csv(files_list[i]))
    #loops through the files, rbinding them together 

    id <- dat$ID
    s <- dat$sulfate
    n <- dat$nitrate
    
    d <- c(s,n)
    
    nobs<-sum(!is.na(d))
    
    df <- data.frame(id,nobs)
  }
df
}

// printing the complete id table !!
