# read csv file ####
data <- read.csv('input.csv')

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

# get the max salary
sal <- max(data$salary)
print(sal)

# get the info of maxsalary
retval <- subset(data, salary == max(salary))
print(retval)


retval <- subset(data, dept == 'IT')
print(retval)

# write csv file

write.csv(retval,"output.csv",row.names = FALSE)


# read json file
# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "input.json")

# Print the result.
print(result)

# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)

print(json_data_frame)

install.packages("RCurl")
install.packages("XML")
install.packages("stringr")
install.packages("plyr")

library(RCurl)
library(XML)
library(stringr)
library(plyr)
# Read the URL.
url <- "http://www.geos.ed.ac.uk/~weather/jcmb_ws/"

# Gather the html links present in the webpage.
links <- getHTMLLinks(url)

# Identify only the links which point to the JCMB 2015 files. 
filenames <- links[str_detect(links, "JCMB_2015")]

# Store the file names as a list.
filenames_list <- as.list(filenames)

# Create a function to download the files by passing the URL and filename list.
downloadcsv <- function (mainurl,filename) {
  filedetails <- str_c(mainurl,filename)
  download.file(filedetails,filename)
}

# Now apply the l_ply function and save the files into the current R working directory.
l_ply(filenames,downloadcsv,mainurl = "http://www.geos.ed.ac.uk/~weather/jcmb_ws/")

library(RMySQL)
# connect to mysql 
mysqlconnection = dbConnect(MySQL(), user = 'root', password = 'root', dbname = 'test',
                            host = 'localhost')
dbListTables(mysqlconnection)
dbSendQuery(mysqlconnection, 'SET NAMES gbk')
result = dbSendQuery(mysqlconnection,"select * from user")
print(result)

data.frame <- fetch(result)
data.frame
