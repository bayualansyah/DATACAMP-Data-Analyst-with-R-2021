# Using top_n with babynames
# 
# You saw that you could use filter() and arrange() to find the most common names in one year. However, you could also use group_by() and top_n() to find the most common name in every year.


# Instructions
# Use group_by() and top_n() to find the most common name for US babies in each year.


babynames %>%
  # Find the most common name in each year
  group_by(year) %>%
  top_n(1, number)
