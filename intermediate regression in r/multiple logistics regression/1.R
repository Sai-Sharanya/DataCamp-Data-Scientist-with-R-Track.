#1

# Using churn, plot recency vs. length of relationship,
# colored by churn status
ggplot(
  churn, 
  aes(time_since_first_purchase, time_since_last_purchase, color = has_churned)
) +
  # Make it a scatter plot, with transparency 0.5
  geom_point(alpha = 0.5) +
  # Use a 2-color gradient split at 0.5
  scale_color_gradient2(midpoint = 0.5) +
  # Use the black and white theme
  theme_bw()
