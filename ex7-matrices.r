# matrices can only contain a single class of data (data frames can have more)
# matrix is an atomic vector with a dimension attribute
?matrix

# create a vector (and convert it to a matrix)
vect <- 1:20

# returns NULL since there is no dimension attribute
dim(vect)

# length does, returns 20
length(vect)

# assign a dimension to the vector (turns it into a matrix)
dim(vect) <- c(4,5)

# display the dimensions
dim(vect)

# returns matrix
class(vect)

# creates the same matrix as the above vector conversion example
matrix <- matrix(1:20, nrow=4, ncol=5)

# you can prove they're the same w/
identical(vect, matrix)
