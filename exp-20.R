data(ChickWeight)

model <- lm(weight ~ Time + Diet, data=ChickWeight)
print(summary(model))

predicted <- predict(model, newdata=ChickWeight)

# Mean squared error
mse <- mean((ChickWeight$weight - predicted)^2)
print(mse)

# Predict weight for a new observation
new_data <- data.frame(
  Time=10,
  Diet=factor(2, levels=levels(ChickWeight$Diet))
)

print(predict(model, newdata=new_data))