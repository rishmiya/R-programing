# Create a vector of values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Compute the mean
mean_value <- mean(values)

# Compute the median
median_value <- median(values)

# Compute the mode
mode_value <- names(table(values))[table(values) == max(table(values))]

# Print the results
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))
second_highest <- sort(unique(values), decreasing = TRUE)[2]

# Find the 3rd lowest value
third_lowest <- sort(unique(values))[3]

# Print the results
print(paste("2nd highest value:", second_highest))
print(paste("3rd lowest value:", third_lowest))


