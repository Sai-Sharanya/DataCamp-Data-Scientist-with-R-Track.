#7


# Make a grid of explanatory data
explanatory_data <- expand_grid(
  # Set n_convenience to zero to ten
  n_convenience = 0:10,
  # Set house_age_years to the unique values of that variable
  house_age_years = unique(taiwan_real_estate$house_age_years)
)

# See the result
explanatory_data






# From previous step
explanatory_data <- expand_grid(
  n_convenience = 0:10,
  house_age_years = unique(taiwan_real_estate$house_age_years)
)

# Add predictions to the data frame
prediction_data <- explanatory_data %>% 
  mutate(
    price_twd_msq = predict(mdl_price_vs_both_inter, explanatory_data)
  )

# See the result
prediction_data







# From previous step
explanatory_data <- expand_grid(
  n_convenience = 0:10,
  house_age_years = unique(taiwan_real_estate$house_age_years)
)
prediction_data <- explanatory_data %>% 
  mutate(
    price_twd_msq = predict(mdl_price_vs_both_inter, explanatory_data)
  )

# Using taiwan_real_estate, plot price vs. no. of convenience 
# stores, colored by house age
ggplot(taiwan_real_estate, aes(n_convenience, price_twd_msq, color = house_age_years)) +
  # Make it a scatter plot
  geom_point() +
  # Add linear regression trend lines, no ribbon
  geom_smooth(method = "lm", se = FALSE) +
  # Add points from prediction_data, size 5, shape 15
  geom_point(data = prediction_data, size = 5, shape = 15)
