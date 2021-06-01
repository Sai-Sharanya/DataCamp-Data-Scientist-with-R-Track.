#5


# Model price vs both with an interaction using "times" syntax
lm(price_twd_msq ~ n_convenience * house_age_years, data = taiwan_real_estate)



# Model price vs both with an interaction using "colon" syntax
lm(
  price_twd_msq ~ n_convenience + house_age_years + n_convenience:house_age_years, 
  data = taiwan_real_estate
)
