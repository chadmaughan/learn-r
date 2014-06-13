# install the data manipulation library
library(dplyr)

# read in the text file
ctxt = read.csv("~/Downloads/CDR_message_1234567890.csv", skip=6)

# clean the numbers (get rid of the t-mobile blast messages)
cd1 = ctxt %.% mutate(cleanNumber = gsub("[^0-9]", "", sub("\\+1", "", Number))) %.% filter(cleanNumber != "22300", cleanNumber != "500", cleanNumber != "24742", cleanNumber != "")

# get the count and sort
cd2 = cd1 %.% group_by(cleanNumber, Type) %.% summarise(count = n()) %.% arrange(count)
