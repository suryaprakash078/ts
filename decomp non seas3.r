# Data
sales <- c(120,125,132,140,151,160,172,185)

# Time series
x <- ts(sales,start=2016)

# Decompose
d <- decompose(x)

# Display components
d
d$trend
d$random

# Plot
plot(d)