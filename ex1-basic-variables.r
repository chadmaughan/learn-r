# you can use the '=' or '<-' operator to create variables
year = 2012
month = "September"
day_of_week <- 'Monday'

# Basic Data Types

## 'character' (string)
# single or double quotes work
s <- "hello"
s
class(s)	# character
is.character(s)


## numeric
n <- 3
n
class(n)	# numeric
is.numeric

o <- sqrt(n * n + 3)
o
class(o)	# numeric

# shows all the current variables in the workspace
ls()

# anything you make in r can be a variable, including histograms, etc
