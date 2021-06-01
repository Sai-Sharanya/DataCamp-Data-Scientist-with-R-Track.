#8



# Get the actual responses from the dataset
actual_response <- churn$has_churned

# Get the "most likely" predicted responses from the model
predicted_response <- round(fitted(mdl_churn_vs_relationship))

# Create a table of counts
outcomes <- table(predicted_response, actual_response)

# See the result
outcomes
