# The if statement
# 
# Before diving into some exercises on the if statement, have another look at its syntax:
#   
#   if (condition) {
#     expr
#   }
# 
# Remember your vectors with social profile views? Let's look at it from another angle. The medium variable gives information about the social website; the num_views variable denotes the actual number of views that particular medium had on the last day of your recordings. Both variables have been pre-defined for you.


# Instructions
# Examine the if statement that prints out "Showing LinkedIn information" if the medium variable equals "LinkedIn".
# Code an if statement that prints "You are popular!" to the console if the num_views variable exceeds 15.


# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
  print("You are popular!")
}