#Q1- Read multiple json files into a working directory for further converting into a dataset.

    I have files text1, text2, text3 in the directory json.
#Ans-
library(readxl)
file.list <- list.files(pattern='*.xlsx')
df.list <- lapply(file.list, read_excel)   
##
library(rjson)
filenames <- list.files("Users/Desktop/json", 
                        pattern="*.json", 
                        full.names=TRUE) 
#Q2- Parse the following JSON into a data frame
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)", 
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'

#Ans- 
temp <- list.files(path, pattern="*.json", full.names=TRUE)
movies <- purrr::map_df(temp, function(x) { 
  purrr::map(jsonlite::fromJSON(x), function(y) ifelse(is.null(y), NA, y)) 
})

#Q6- Write a script for variable binning using R
# Ans-
df = data.frame(v=sample(1:60,1000,TRUE))
df$cat = cut(df$v,c(-Inf,6,12,Inf))
table(df$cat)