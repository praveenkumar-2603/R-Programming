set.seed(123)

x <- round(rnorm(100))
frequency <- table(x)

result <- as.data.frame(frequency)
print(result)