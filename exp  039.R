# Load the USArrests dataset
data(USArrests)

# Explore the summary of the dataset
summary(USArrests)
# Print the state which saw the largest total number of rape
rape_max_state <- rownames(USArrests)[which.max(USArrests$Rape)]
print(paste("The state which saw the largest total number of rape is", rape_max_state))
# Print the states with the max & min crime rates for murder
murder_max_state <- rownames(USArrests)[which.max(USArrests$Murder)]
murder_min_state <- rownames(USArrests)[which.min(USArrests$Murder)]
print(paste("The state with the highest crime rate for murder is", murder_max_state))
print(paste("The state with the lowest crime rate for murder is", murder_min_state))
# Find the correlation among the features
correlation <- cor(USArrests)

# Print the states which have assault arrests more than the median of the country
assault_median <- median(USArrests$Assault)
assault_more_than_median <- rownames(USArrests)[which(USArrests$Assault > assault_median)]
print(paste("The states which have assault arrests more than the median of the country are", assault_more_than_median))

# Print the states that are in the bottom 25% of murder
murder_quantile <- quantile(USArrests$Murder, 0.25)
bottom_25_percent_murder <- rownames(USArrests)[which(USArrests$Murder < murder_quantile)]
print(paste("The states that are in the bottom 25% of murder are", bottom_25_percent_murder))
# Create a histogram and density plot of murder arrests by US state
hist(USArrests$Murder, main = "Histogram of Murder Arrests by US State", xlab = "Murder Arrests")
lines(density(USArrests$Murder), col = "red")

# Create the plot that shows the relationship between murder arrest rate and proportion of the population that is urbanized by state
plot(USArrests$UrbanPop, USArrests$Murder, main = "Relationship between Murder Arrest Rate and Proportion of Population that is Urbanized by State", xlab = "Proportion of Population that is Urbanized", ylab = "Murder Arrest Rate")
points(USArrests$UrbanPop, USArrests$Assault, col = heat.colors(length(USArrests$Assault))[rank(USArrests$Assault)])

# Draw a bar graph to show the murder rate for each of the 50 states
barplot(USArrests$Murder, main = "Murder Rate by US State", xlab = "US State", ylab = "Murder Rate")
