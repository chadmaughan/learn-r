# Date Structures

# Vectors
#  one-dimensional arrays that hold numeric, character, or logical
a <- c(1, 2, 5, 3, 6, -2, 4)					# numeric example
b <- c("one", "two", "three")					# charachter example
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)	# logical example

# you can't mix data types in a vector
#  this example will turn all fields into a character vector
d <- c(1, TRUE, "one")

# c() function forms a vector
help(c)

# reference an index like an array
a[3]	# 5
a[1]	# 1 - NOTE, not zero based

# you can refer to elements in a vector with another vector
a[c(1,3,5)]		# 1, 5, 6

# the colon operator
a[2:5]

# you can check if a variable is a vector
is.vector(a)	# TRUE
