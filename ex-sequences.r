# create a sequence
1:10

# backwards
15:1

# works with real numbers as well
pi:10

# same thing as "1:10"
seq(1,10)

# increment by something other than 1
seq(0, 10, by=0.5)

# specify a start, an end, and how many elements
seq(5, 10, length=30)

# creates a sequence the same length as the passed variables
seq(along.with=my_seq)

# same as above
seq_along(my_seq)

# creates a vector of 40 zeroes
rep(0, times=40)

# create a vector of 30 elements repeating the vector, i.e. = 0,1,2,0,1,2 ...
rep(c(0,1,2), times = 10)

# create a vector like above but each element ten times, i.e. = 0,0,0,0,0,0,0,0,0,0,1,1,1,1,1 ...
rep(c(0, 1, 2), each = 10)
