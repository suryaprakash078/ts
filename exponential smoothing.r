# Data
sales <- c(120,125,130,128,135,140,145,150,148,155,160,165)

# Time series
x <- ts(sales,frequency=12)

# Smoothing
fit <- HoltWinters(x,beta=FALSE,gamma=FALSE)

# Plot
plot(fit,main="Simple Exponential Smoothing")
