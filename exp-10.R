exam_data <- data.frame(
  name=c("Anu", "Bala", "Charan", "Divya", "Esha"),
  score=c(85, 62, 90, 75, 88),
  attempts=c(1, 3, 2, 2, 1),
  qualify=c("yes", "no", "yes", "no", "yes")
)

# Extract rows and columns
print(exam_data[1, ])
print(exam_data$name)

# Add a new row
new_row <- data.frame(
  name="Farhan",
  score=70,
  attempts=3,
  qualify="no"
)

exam_data <- rbind(exam_data, new_row)

# Add a grade column
exam_data$grade <- ifelse(
  exam_data$score >= 85, "A",
  ifelse(exam_data$score >= 70, "B", "C")
)

# Sort by score in descending order
exam_data <- exam_data[order(-exam_data$score), ]

print(exam_data)

# Save to CSV
write.csv(exam_data, "exam_data.csv", row.names=FALSE)