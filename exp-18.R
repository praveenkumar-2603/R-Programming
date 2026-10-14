x <- c(10, 20, 30, 40, 50)
y <- c(15, 25, 20, 35, 45)

par(mfrow=c(2, 3))

# Boxplot
boxplot(x, main="Boxplot")

# Histogram
hist(x, main="Histogram")

# Bar plot
barplot(x, names.arg=letters[1:5], main="Bar Plot")

# Line chart
plot(x, type="l", main="Line Chart")

# Scatter plot
plot(x, y, main="Scatter Plot", xlab="X", ylab="Y")