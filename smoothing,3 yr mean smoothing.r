sales <- c(120,125,130,128,135,140,145,150,148,155,160,165)

x <- ts(sales,frequency=12)

fit <- HoltWinters(x,beta=FALSE,gamma=FALSE)
plot(fit,main="Simple Exponential Smoothing")

avg <- filter(x,rep(1/3,3),sides=2)

smooth <- runmed(sales,k=3)
plot(sales,type="o",col="blue",
     main="Running Median Smoothing")
lines(smooth,col="red")
