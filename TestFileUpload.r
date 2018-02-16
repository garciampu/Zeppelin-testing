sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
#path in hdfs
people <- read.df(sqlContext, "/user/dmisra/examples/src/main/resources/people.json", "json")
head(people)
##  age    name
##1  NA Michael
##2  30    Andy
##3  19  Justin
