# Data
year <- 2015:2023
sales <- c(120,128,135,142,150,158,165,172,180)
data <- data.frame(year,sales)

# Linear trend
l <- lm(sales~year,data)
summary(l)
plot(year,sales,pch=16,main="Trend Analysis")
abline(l,col="red")

# Quadratic trend
q <- lm(sales~year+I(year^2),data)
summary(q)
lines(year,predict(q),col="blue")

# Exponential trend
e <- lm(log(sales)~year,data)
summary(e)
lines(year,exp(predict(e)),col="green")