# Create data
data <- data.frame(
x1=c(1:4,99999,1,NA,1,1,NA),
x2=c(1:5,1,"NA",1,1,"NA"),
x3=c("a","b","c","x x","x"," y y y","x","a","a",NA),
x4="",x5=NA)

# Rename columns
names(data) <- paste0("col",1:5)

# Clean data
data[data=="" | data=="NA"] <- NA
data <- data[rowSums(is.na(data)) < ncol(data),]
data <- data[,colSums(is.na(data)) < nrow(data)]
data <- unique(data)
data <- type.convert(data,as.is=TRUE)

# Remove outlier
data <- data[!data$col1 %in% boxplot.stats(data$col1)$out,]

# Clean text
data$col3 <- gsub(" ","",data$col3)
data$col3[data$col3 %in% c("b","c")] <- "a"

print(data)