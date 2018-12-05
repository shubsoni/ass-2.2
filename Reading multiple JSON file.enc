library(purrr)
library(tidyverse)
library(jsonlite)
path<-"./file_path"
files<-dir(path,pattern="*.jason")
data<-files%>%
  map_df(~fromJSON(file.path(path,.),flatten=TRUE))