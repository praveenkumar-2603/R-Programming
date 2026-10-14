data(ChickWeight)

# Display first six rows
print(head(ChickWeight))

# Sort by weight
sorted_data <- ChickWeight[
  order(ChickWeight$weight),
]
print(head(sorted_data))

# Average weight for each diet
avg_weight <- aggregate(
  weight ~ Diet,
  data=ChickWeight,
  FUN=mean
)

print(avg_weight)
