install.packages("d3r")
library(d3r)

#Convert to json
data <- read.csv("GovtExpenditure_2021.csv", stringsAsFactors = FALSE)
data_js <- d3_nest(data, root="Total Expenditure", value_cols=c("value"))
write(data_js, "GovtExpenditure_FY2021.json")

#convert wide to long format
data_long <- reshape(data, 
                     varying = c("Operating", "Development"),
                     v.names = "value",
                     timevar = "type", 
                     times = c("Operating", "Development"),
                     direction = "long")
data_long <- data_long[order(data_long$id),]
data_long <- data_long[,c(1:4)]
data_js <- d3_nest(data_long, root="Total Expenditure", value_cols=c("value"))
write(data_js, "GovtExpenditure_FY2021_OD.json")
