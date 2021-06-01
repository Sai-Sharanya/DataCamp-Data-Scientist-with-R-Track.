#1 


# Fit a linear regr'n of price_twd_msq vs. n_convenience
mdl_price_vs_conv <- lm(price_twd_msq ~ n_convenience, data = taiwan_real_estate)

# See the result
mdl_price_vs_conv



# Fit a linear regr'n of price_twd_msq vs. house_age_years, no intercept
mdl_price_vs_age <- lm(price_twd_msq ~ house_age_years + 0, data = taiwan_real_estate)

# See the result
mdl_price_vs_age




# Fit a linear regr'n of price_twd_msq vs. n_convenience 
# plus house_age_years, no intercept
mdl_price_vs_both <- lm(price_twd_msq ~ n_convenience + house_age_years + 0, data = taiwan_real_estate)

# See the result
mdl_price_vs_both
