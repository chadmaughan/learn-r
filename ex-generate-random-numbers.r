# TODO - explore more

# sample rolling of dice
#  replace allows the same number to show up again
sample(1:6, 4, replace = TRUE)

# replace FALSE only allows a number to show up once
sample(1:6, 4)

# sample can rearrange elements in a vector
sample(LETTERS)


# r*** function (for "random"), 
# d*** function (for "density")
# p*** (for "probability")
# q*** (for "quantile")

# standard normal distribution has mean 0 and standard deviation 1
rnorm(10) # 10 numbers w/ a mean of 0 and sd=1
rnorm(n, mean=0, sd=1)

#
dnorm(x, mean=0, sd=1, log=FALSE)

# 
pnorm(q, mean=0, sd=1, lower.tail=TRUE, log.p=FALSE)

#
qnorm(p, mean=0, sd=1, lower.tail=TRUE, log.p=FALSE)

# Poisson variates w/ a given rate
rpois
