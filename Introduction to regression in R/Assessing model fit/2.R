#2


# Get RSE for mdl_click_vs_impression_orig
mdl_click_vs_impression_orig %>% 
  # Get the model-level details
  glance() %>% 
  # Pull out sigma
  pull(sigma)

# Do the same for the transformed model
mdl_click_vs_impression_trans %>%
  glance()  %>%
   pull(sigma)





#The typical difference between observed number of clicks and predicted number of clicks is 20


#The transformed model, mdl_click_vs_impression_trans
