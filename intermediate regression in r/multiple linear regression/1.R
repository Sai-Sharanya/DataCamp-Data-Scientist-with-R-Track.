#1


# With taiwan_real_estate, draw a 3D scatter plot of
# no. of conv. stores, sqrt dist to MRT, and price
taiwan_real_estate %$% 
  scatter3D(n_convenience, sqrt(dist_to_mrt_m), price_twd_msq)




# Using taiwan_real_estate, plot sqrt dist to MRT vs. 
# no. of conv. stores, colored by price
ggplot(
  taiwan_real_estate, 
  aes(n_convenience, sqrt(dist_to_mrt_m), color = price_twd_msq)
) + 
  # Make it a scatter plot
  geom_point() +
  # Use the continuous viridis plasma color scale
  scale_color_viridis_c(option = "plasma")
