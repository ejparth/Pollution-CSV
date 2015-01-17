# Pollution-CSV
+Courser Group Working Together on Pollution database

+ pollutantmean <- function(directory, pollutant,id)  {
  +      files_list <- list.files(directory, full.names=TRUE)   #creates a list of files
   +     dat <- data.frame()                             #creates an empty data frame
    +    for (i in id) {                                
     +           #loops through the files, rbinding them together 
     +           dat <- rbind(dat, read.csv(files_list[i]))
      +  }
        
     +   mean(dat_subset[, pollutant], na.rm=TRUE)      #identifies the pllutant
   +                                                     #while stripping out the NAs
+}
