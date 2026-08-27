# Install once if needed
# install.packages("forecast")

library(forecast)

# Data
sales <- c(120,125,132,140,151,160,172,185,197,210)

# Time series
x <- ts(sales,start=2015)

# ARIMA model
fit <- Arima(x,order=c(0,1,1))

# Forecast
f <- forecast(fit,h=5)

# Display and plot
f
plot(f,main="ARIMA Forecast")