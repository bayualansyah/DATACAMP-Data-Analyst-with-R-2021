# Selecting columns
# 
# Using the select() verb, we can answer interesting questions about our dataset by focusing in on related groups of verbs. The colon (:) is useful for getting many columns at a time.


# Instructions
# Use glimpse() to examine all the variables in the counties table.
# Select the columns for state, county, population, and (using a colon) all five of those industry-related variables; there are five consecutive variables in the table related to the industry of people's work: professional, service, office, construction, and production.
# Arrange the table in descending order of service to find which counties have the highest rates of working in the service industry.


# Glimpse the counties table
glimpse(counties)

counties %>%
  # Select state, county, population, and industry-related columns
  select(state, county, population, professional, service, office, construction, production) %>%
  # Arrange service in descending order 
  arrange(desc(service))