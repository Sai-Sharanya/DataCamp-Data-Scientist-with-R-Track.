#10


# Print the country_coefficients dataset
country_coefficients

# Filter for only the slope terms
country_coefficients %>%
  filter(term == "year")
