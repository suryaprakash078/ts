# Data
sales <- c(120,125,130,128,135,140,145,150,148,155,160,165)

# Time series
x <- ts(sales,frequency=12)

# Plot
plot(x,type="o",pch=16,col="blue",
     main="Monthly Sales",
     xlab="Month",ylab="Sales")