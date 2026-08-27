# Data
sales <- c(120,125,132,140,151,160,172,185,197,210)

# Time series
x <- ts(sales,start=2015)

# Difference
d <- diff(x)

# ACF and PACF
acf(d)
pacf(d)

# ARIMA model
library(forecast)
fit <- Arima(x,order=c(0,1,1))
summary(fit)

# Forecast
f <- forecast(fit,h=5)
f
plot(f)