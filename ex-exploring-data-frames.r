# gets the dimensions (rows & cols of data frame)
dim(df)

# get individually
nrow(df)
ncol(df)

# see how much space it takes in memory
object.size(df)

# returns character vector of column names
names(df)

# get the first six rows
head(df)

# specify number of rows to return
head(df, 10)

# same with tail
tail(df)

# view how each variable (column) is distributed, how much is missing (NAs) etc
summary(df)

# for categorical/factor columns, you can see counts of values
table(df$column)

# *str*ucture, gives you the most useful and concise function for understanding data
#  it combines many of the features of the other functions above, all in a concise and readable format
#  it can be used on any objects, not just data frames
str(df)
