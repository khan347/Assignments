# Load necessary libraries
library(ggplot2)  # For plotting

# Load the data
whitewines <- read.csv("~/Desktop/whitewines.csv", stringsAsFactors = FALSE)

# Convert quality to a binary outcome variable
whitewines$quality_binary <- ifelse(whitewines$quality > 6, "good", "bad")

# Plot the distribution of the binary outcome variable
hist(whitewines$quality_binary)

# Split the data into training and testing sets
set.seed(123)  # For reproducibility
wine_train <- whitewines[1:3750, ]
wine_test <- whitewines[3751:4898, ]

# Fit the logistic regression model
m.logistic <- glm(quality_binary ~ ., data = wine_train, family = binomial)

# Make predictions on the test set
p.logistic <- predict(m.logistic, wine_test, type = "response")

# Convert predicted probabilities to binary outcomes
predicted_classes <- ifelse(p.logistic > 0.5, "good", "bad")

# Print summary of the predicted classes
table(predicted_classes)

# Print summary of the actual classes
table(wine_test$quality_binary)

# Calculate the accuracy of the logistic regression model
accuracy <- mean(predicted_classes == wine_test$quality_binary)
print(paste("Accuracy: ", accuracy))

# Plot observed vs predicted values
ggplot(data = wine_test, aes(x = quality_binary, y = p.logistic)) +
  geom_point() +
  geom_smooth(method = "glm", method.args = list(family = binomial), se = FALSE, col = "blue") +
  labs(title = "Observed vs Predicted Quality (Logistic Regression)", x = "Observed Quality", y = "Predicted Probability") +
  theme_minimal()


