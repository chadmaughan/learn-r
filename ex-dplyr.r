# dplyr
# select(), filter(), arrange(), mutate(), and summarize()

# TODO get from swirl source

#
#
# select()
#
#
# wraps a data frame and enhances the printing (only shows as many columns as fit screen with + 10 rows)
cran <- tbl_df(data)

# maintains order, doesn't require using $ operator for each column
select(cran, ip_id, package, country)

# supports column ranges
select(cran, r_arch:country)

# works in reverse
select(cran, country:r_arch)

# remove columns
select(cran, -time)

# remove a range of columns
select(cran, -(X:size))


#
#
# filter()
#
#
filter(cran, r_version == "3.1.1", country == "US")

filter(cran, !is.na(r_version))

#
#
# arrange()
#
#
cran2 <- select(cran, size:ip_id)

# sort by ip_id
arrange(cran2, ip_id)

# sort in reverse order of ip_id
arrange(cran2, desc(ip_id))


#
#
# mutate()
#
#
cran3 <- select(cran, ip_id, package, size)

# create a new column based on existing columns
mutate(cran3, size_mb = size / 2^20)

# create two columns
mutate(cran3, size_mb = size / 2^20, size_gb = size_mb / 2^10)


#
#
# summarize()
#
#
summarize(cran, avg_bytes = mean(size))
