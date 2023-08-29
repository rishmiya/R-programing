# Load required libraries
library(ggplot2)

# Load the ChickWeight dataset
data(ChickWeight)

# (a) Create Box plot for "weight" grouped by "Diet"
boxplot_plot <- ggplot(ChickWeight, aes(x = as.factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(x = "Diet", y = "Weight", title = "Box Plot of Weight Grouped by Diet")
print(boxplot_plot)

