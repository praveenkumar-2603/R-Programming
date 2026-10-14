data(iris)

# Dimensions
print(dim(iris))

# Summary statistics
print(summary(iris))

# Standard deviation of numeric columns
print(sapply(iris[, 1:4], sd))

# Quantiles
print(quantile(iris$Sepal.Length))

# Mean values grouped by species
print(aggregate(. ~ Species, data=iris, FUN=mean))

# Pivot table
print(xtabs(~ Species + (Sepal.Length > 5), data=iris))

# Categorize Sepal.Length
iris$Length_Category <- cut(
  iris$Sepal.Length,
  breaks=c(0, 5, 6, Inf),
  labels=c("Short", "Medium", "Long")
)

print(table(iris$Length_Category))