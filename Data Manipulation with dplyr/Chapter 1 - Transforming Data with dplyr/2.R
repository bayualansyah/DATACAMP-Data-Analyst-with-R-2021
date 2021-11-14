# Arranging observations
# 
# Here you see the counties_selected dataset with a few interesting variables selected. These variables: private_work, public_work, self_employed describe whether people work for the government, for private companies, or for themselves.
# 
# In these exercises, you'll sort these observations to find the most interesting cases.


# Instructions
# Add a verb to sort the observations of the public_work variable in descending order.


counties_selected <- counties %>%
  select(state, county, population, private_work, public_work, self_employed)

counties_selected %>%
  # Add a verb to sort in descending order of public_work
  arrange(desc(public_work))