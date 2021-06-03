#6


# Make a grid of explanatory data
explanatory_data <- expand_grid(
  # Set dist_to_mrt_m a seq from 0 to 80 by 10s, squared
  dist_to_mrt_m = seq(0, 80, 10) ^ 2,
  # Set n_convenience to 0 to 10
  n_convenience = 0:10,
  # Set house_age_years to the unique values of that variable
  house_age_years = unique(taiwan_real_estate$house_age_years)
)

# See the result
explanatory_data



# From previous step
explanatory_data <- expand_grid(
  dist_to_mrt_m = seq(0, 80, 10) ^ 2,
  n_convenience = 0:10,
  house_age_years = unique(taiwan_real_estate$house_age_years)
)

# Add predictions to the data frame
prediction_data <- explanatory_data %>% 
  mutate(
    price_twd_msq = predict(mdl_price_vs_all_3_way_inter, explanatory_data)
  )

# See the result
prediction_data




# From previous step
explanatory_data <- expand_grid(
  dist_to_mrt_m = seq(0, 80, 10) ^ 2,
  n_convenience = 0:10,
  house_age_years = unique(taiwan_real_estate$house_age_years)
)
prediction_data <- explanatory_data %>% 
  mutate(price_twd_msq = predict(mdl_price_vs_all_3_way_inter, explanatory_data))

# Extend the plot
ggplot(
  taiwan_real_estate, 
  aes(sqrt(dist_to_mrt_m), n_convenience, color = price_twd_msq)
) +
  geom_point() +
  scale_color_viridis_c(option = "plasma") +
  facet_wrap(vars(house_age_years)) +
  # Add points from prediction data, size 3, shape 15
  geom_point(data = prediction_data, size = 3, shape = 15)
