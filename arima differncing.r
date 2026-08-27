# Data
sales <- c(120,125,132,140,151,160,172,185)

# Time series
x <- ts(sales,start=2016)

# Original
x
plot(x,type="o")

# First difference
d1 <- diff(x)
d1
plot(d1,type="o")

# Second difference
d2 <- diff(x,2)
d2
plot(d2,type="o")