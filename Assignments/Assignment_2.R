#' Narcissistic Numbers
#' Author: Youssef Emam

## Comments have been made with a ## 

# Q1: Prompt the user to enter a 3 digit positive number
input <- readline("please enter a positive 3 digit number: ")

# as.numeric will convert the input the a number, if it is not a number it will convert to NA
# the supressWarnings() function will hide the warning message in the console if NAs are introduced
# I am doing this since I am handling this case myself and printing an appropriate error message

## This is great! I learned a new function (supressWarnings()) and I will definitely start using this function.  
input <- suppressWarnings(as.numeric(input))

## When you check if the number is narcissistic (lines 23 and onwards), should you also consider if it is a 
## 3-digit positive number? (ie. (number >= 1000 | number <= 99)) 
## I can input a (for example) 4-digit number and it would pass the first checking system (if the input is a number - line 23) 
## It would output whether the 4-digit number is a narcissistic number (but since your following code only tests for the last three digits,
## it would only cube the last three digits of that 4 digit number)

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

## Line 23 to 56 is a cool method to extract each digit of a 3-digit number! 
## I found this other method online if you're interested in a different perspective!

#DIFFERENT CODE POV: 
##To sum the cubes of each individual digit in the 3 digits positive number,
##we need to split the 3 digits positive number into its individual digits (ie. 123 into 1, 2, and 3)

##We can split the elements of a character vector using the strsplit function by first reading the 3
##digit positive number as characters
##CODE:     individual_character <- strsplit(as.character(number), "")

##The strsplit function will display the results as a list. To calculate the sum of cubes of each
##individual digit, we need to create a vector from the list by using the unlist function
##We finally need to convert the vector of characters to a numeric vector for further use
##CODE:    individual_digit <- as.numeric(unlist(individual_character))

##Sum the cubes of each individual digit from the 3-digit positive number (ie. 123 -> 1^3 + 2^3 + 3^3)
##CODE:    sum_of_cubes <- sum(individual_digit^3)

  
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

## Overall great code! I learned a lot of new functions. I really liked your method in tackling 
## how to split the 3-digit code into its individual components

