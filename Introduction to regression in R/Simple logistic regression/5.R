#5


# Update the data frame
prediction_data <- explanatory_data %>% 
  mutate(   
    has_churned = predict(mdl_churn_vs_relationship, explanatory_data, type = "response"),
    # Add the most likely churn outcome
    most_likely_outcome = round(has_churned)
  )

# See the result
prediction_data






# From previous step
prediction_data <- explanatory_data %>% 
  mutate(   
    has_churned = predict(mdl_churn_vs_relationship, explanatory_data, type = "response"),
    most_likely_outcome = round(has_churned)
  )

# Update the plot
plt_churn_vs_relationship +
  # Add most likely outcome points from prediction_data, 
  # colored yellow, size 2
  geom_point(
    aes(y = most_likely_outcome), 
    data = prediction_data, 
    color = "yellow",
    size = 2
  )
