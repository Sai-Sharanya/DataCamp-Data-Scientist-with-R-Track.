#3


# Using taiwan_real_estate, plot price_twd_msq
ggplot(taiwan_real_estate, aes(price_twd_msq)) +
  # Make it a histogram with 10 bins
  geom_histogram(bins=10) +
  # Facet the plot so each house age group gets its own panel
  facet_wrap(vars(house_age_years))
