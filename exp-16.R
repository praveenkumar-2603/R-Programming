data(USArrests)

# Summary statistics
print(summary(USArrests))

# State with highest rape arrest rate
print(rownames(USArrests)[which.max(USArrests$Rape)])

# Maximum and minimum murder rates
print(max(USArrests$Murder))
print(min(USArrests$Murder))

# Correlation between variables
print(cor(USArrests))

# States with assault above median
print(USArrests[USArrests$Assault > median(USArrests$Assault), ])

# States in the bottom 25% for murder
print(USArrests[USArrests$Murder <= quantile(USArrests$Murder, 0.25), ])

# Histogram
hist(USArrests$Murder, main="Murder Rates", xlab="Murder")

# Density plot
plot(density(USArrests$Murder), main="Murder Density")

# Scatter plot
plot(USArrests$Murder, USArrests$Assault,
     xlab="Murder", ylab="Assault",
     main="Murder vs Assault")

# Bar graph
barplot(USArrests$Murder,
        names.arg=rownames(USArrests),
        las=2, cex.names=0.5,
        main="Murder Rates by State")