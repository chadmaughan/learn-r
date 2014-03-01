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
