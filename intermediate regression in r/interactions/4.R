#4


# Get the coeff. of determination for mdl_all_ages
mdl_all_ages %>% 
  glance() %>% 
  pull(r.squared)

# Get the coeff. of determination for mdl_0_to_15
mdl_0_to_15 %>% 
  glance() %>% 
  pull(r.squared)

# Get the coeff. of determination for mdl_15_to_30
mdl_15_to_30 %>% 
  glance() %>% 
  pull(r.squared)

# Get the coeff. of determination for mdl_30_to_45
mdl_30_to_45 %>% 
  glance() %>% 
  pull(r.squared)






# Get the RSE for mdl_all
mdl_all_ages %>% 
  glance() %>% 
  pull(sigma)

# Get the RSE for mdl_0_to_15
mdl_0_to_15 %>% 
  glance() %>% 
  pull(sigma)

# Get the RSE for mdl_15_to_30
mdl_15_to_30 %>% 
  glance() %>% 
  pull(sigma)

# Get the RSE for mdl_30_to_45
mdl_30_to_45 %>% 
  glance() %>% 
  pull(sigma)
