# Sample list of real numbers (you can replace this with your own data)
big_list <- c(12.5, 14.3, 10.2, 8.7, 15.8, 9.4, 7.1, 13.2, 11.9, 16.5, 8.6, 12.1, 14.7, 9.8, 7.9)

# Create an empty data frame to store the means
result_df <- data.frame(Iteration = integer(0), Mean = numeric(0))

# Define a function to calculate the mean of every four numbers
calculate_mean <- function(numbers, start_index) {
  subset <- numbers[start_index:(start_index + 3)]
  mean_value <- mean(subset)
  return(mean_value)
}

# Iterate through the big list of numbers in steps of 4
for (i in seq(1, length(big_list), by = 4)) {
  mean_value <- calculate_mean(big_list, i)
  result_df <- rbind(result_df, data.frame(Iteration = i, Mean = mean_value))
}

# Print the resulting data frame
print(result_df)
