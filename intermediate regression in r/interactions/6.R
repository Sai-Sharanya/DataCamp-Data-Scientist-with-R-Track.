#6


# Model price vs. house age plus an interaction, no intercept
mdl_readable_inter <- lm(
  price_twd_msq ~ house_age_years + n_convenience:house_age_years + 0, 
  data = taiwan_real_estate
)

# See the result
mdl_readable_inter

# Get coefficients for mdl_0_to_15
coefficients(mdl_0_to_15)

# Get coefficients for mdl_15_to_30
coefficients(mdl_15_to_30)

# Get coefficients for mdl_30_to_45
coefficients(mdl_30_to_45)





