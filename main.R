#See http://spark.rstudio.com/ for sparklyr (Spark + R)

if(!require(sparklyr)) install.packages("sparklyr")
library(sparklyr)
#spark_install(version = "2.0.0") #install Spark


#################################################################################

sc <- spark_connect(master = "local")

#See for other formats: http://spark.rstudio.com/reference/sparklyr/latest/spark_read_csv.html
train.date <- spark_read_csv(sc, "date", "./data/train_date.csv.zip")
