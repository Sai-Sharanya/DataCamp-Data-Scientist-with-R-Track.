#4


# Make a data frame of predicted probabilities
prediction_data <- explanatory_data %>% 
  mutate(   
    has_churned = predict(
      mdl_churn_vs_relationship, 
      explanatory_data, 
      type = "response"
    )
  )

# See the result
prediction_data




# From previous step
prediction_data <- explanatory_data %>% 
  mutate(   
    has_churned = predict(mdl_churn_vs_relationship, explanatory_data, type = "response")
  )

# Update the plot
plt_churn_vs_relationship +
  # Add points from prediction_data, colored yellow, size 2
  geom_point(data = prediction_data, color = "yellow", size = 2)
