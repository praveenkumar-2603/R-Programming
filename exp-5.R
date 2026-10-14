height <- c("Short", "Tall", "Medium", "Tall", "Short")
height_factor <- factor(height)
print(height_factor)
print(levels(height_factor))

set.seed(123)
letters_sample <- sample(LETTERS[1:5], 5)
letter_factor <- factor(letters_sample)
print(letter_factor)