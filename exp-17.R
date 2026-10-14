data(Titanic)

titanic_df <- as.data.frame(Titanic)

# Survival versus class
class_survival <- xtabs(Freq ~ Class + Survived, data=titanic_df)
barplot(t(class_survival), beside=TRUE,
        legend=TRUE, main="Survival vs Class")

# Survival versus gender
gender_survival <- xtabs(Freq ~ Sex + Survived, data=titanic_df)
barplot(t(gender_survival), beside=TRUE,
        legend=TRUE, main="Survival vs Gender")

# Titanic is an aggregated dataset and has no individual Age column.
# Use the built-in datasets package's Titanic data for the two plots above.