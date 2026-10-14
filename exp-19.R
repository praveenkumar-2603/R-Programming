# Sample advertising data
advertising <- data.frame(
  Spend=c(100, 200, 300, 400, 500),
  Sales=c(20, 30, 45, 50, 65)
)

# Build model
model <- lm(Sales ~ Spend, data=advertising)
print(summary(model))

# Predict sales for Spend = 350
new_data <- data.frame(Spend=350)
prediction <- predict(model, newdata=new_data)

print(prediction)

# Plot regression line
plot(advertising$Spend, advertising$Sales,
     main="Sales vs Spend",
     xlab="Spend", ylab="Sales")
abline(model)