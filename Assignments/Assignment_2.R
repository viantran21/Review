#' Narcissistic Numbers
#' Author: Youssef Emam


# Q1: Prompt the user to enter a 3 digit positive number
input <- readline("please enter a positive 3 digit number: ")

# as.numeric will convert the input the a number, if it is not a number it will convert to NA
# the supressWarnings() function will hide the warning message in the console if NAs are introduced
# I am doing this since I am handling this case myself and printing an appropriate error message
input <- suppressWarnings(as.numeric(input))


# Q3: Check if the number is narcissistic
if (!is.na(input)){
  # if the input is a number (aka not NA) then: 
  
  # save the original input
  original_input <- input
  
  # make a variable to store the sum of cubes
  sum_digits <- 0
  
  # using the %% operator we can extract the appropriate digit of the number
  # by using %% 10 the output will be the last digit of whatever the input is
  lastdigit <- input %% 10
  
  # add the cube of the digit to the running total
  sum_digits <- sum_digits + (lastdigit^3)
  
  # divide the input by 10 and coerce it into an integer to truncate the last digit
  # This is so that we can remove the last digit and are left with a 2 digit number to redo the earlier operations with
  input <- as.integer(input / 10)
  
  #Use the modulo operator again but find the middle digit (we just removed the last one above)
  middledigit <- input %% 10
  
  #add the cube of the digit to the running total
  sum_digits <- sum_digits + (middledigit^3)
  
  #divide the input by 10 and force it into an integer to truncate the middle digit
  input <- as.integer(input / 10)
  
  #Use the modulo operator again but find the first digit (we just removed the middle one above)
  firstdigit <- input %% 10
  
  #add the cube of the digit to the running total
  sum_digits <- sum_digits + (firstdigit^3)
  
  # Q4: Display the result with an appropriate message
  # Determine if the sum of the cube of the digits is equal to the original input
  if (sum_digits == original_input){
    
    #print an appropriate message
    cat(original_input, "is a narcissistic number!")
    
  } else{
    # print an error message and quit if it isnt narcissistic
    
    # print an appropriate message if it is not a narcissistic number
    cat(original_input, "is not a narcissistic number!")
  }
  
} else {
  # Q2: Check if the user input is numeric. If not, print an error message and quit.
  
  # If the number is not numeric:
  # print an error message
  print("This is not a numeric value")
  
  # no stop() function was needed here because this is the last bit of code to be executed
  # nothing will come after this code block and so the program will stop on its own
  # including the stop function here would be redundant
}


