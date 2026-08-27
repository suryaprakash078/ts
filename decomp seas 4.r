# Monthly sales
sales <- c(120,130,150,180,210,250,270,260,220,190,160,140,
130,140,165,195,225,265,285,275,235,205,175,150)

# Time series
x <- ts(sales,start=c(2023,1),frequency=12)

# Plot
plot(x)

# Decompose
d <- decompose(x)

# Components
d
d$trend
d$seasonal
d$random

# Decomposition plot
plot(d)

# Seasonal component
plot(d$seasonal)