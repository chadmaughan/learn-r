# Running Scripts
# one way to run a script is select all (CTRL-A, CTRL-C) from the R editor and paste (CTRL-V) in the console

# get your current working directory
getwd()

# set your current working directory
setwd("~/github/learn-r/")

# show the files of your currently set directory
list.files()

# include 'echo' paramter if you want to see commands
source("ex1-variables.r", echo=TRUE)
