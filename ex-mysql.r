# a good tutorial: 
#  http://www.r-bloggers.com/mysql-and-r/

# coursera slides & video
#  http://jtleek.com/modules/03_GettingData/02_01_readingMySQL/#1
#  https://d396qusza40orc.cloudfront.net/getdata/lecture_slides/02_01_readingMySQL.pdf
#  https://class.coursera.org/getdata-016/lecture/download.mp4?lecture_id=21

# install the package before importing
library(RMySQL)

# connect to the DB
conn <- dbConnect(MySQL(), user='user', password='password', dbname='jobs', host='host')

sql <- "select from_unixtime(NEXT_FIRE_TIME / 1000, '%H:%i') as time from QRTZ_TRIGGERS WHERE JOB_GROUP = 'JOB' order by time"

# submits, executes and fetches, and clears result set
#  using dbSendQuery() requires you manually do these steps, see help(dbSendQuery)
data <- dbGetQuery(conn, sql)

# then work magic with data

# lists any connections
conns <- dbListConnections(MySQL())

# closes the connection
dbDisconnect(conn)
