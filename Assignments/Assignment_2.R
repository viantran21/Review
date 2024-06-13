#' Narcissistic Numbers
#' Author: Youssef Emam
#' 
#' 
#' 

#Q1: Prompt the user to enter a 3 digit positive number

#as numeric will convert the input the a number, if it is not a number it will convert to NA
input <- as.numeric(readline("please enter a 3 digit positive number: "))


#Q2: Check if the user input is numeric. If not, print an error message and quit.

#if the input is not a number (aka NA) then print an error message and quit with quit()
if (is.na(input)){
  print("This is not a numeric value")
  quit()
} else {
  #Q3: Check if the number is narcissistic
  
  #save the original input
  original_input <- input
  
  #make a variable to store the sum
  sum_digits <- 0
  
  # using the modulo operator we can extract the appropriate digit of the number
  lastdigit <- input %% 10
  
  #add the cube of the digit to the running total
  sum_digits <- sum_digits + (lastdigit^3)
  
  #divide the input by 10 and force it to an integer to truncate the last digit
  input <- as.integer(input / 10)
  
  #Use the modulo operator again but find the middle digit (we just removed the last one above)
  middledigit <- input %% 10
  
  #add the cube of the digit to the running total
  sum_digits <- sum_digits + (middledigit^3)
  
  #divide the input by 10 and force it to an integer to truncate the middle digit
  input <- as.integer(input / 10)
  
  #Use the modulo operator again but find the first digit (we just removed the last one above)
  firstdigit <- input %% 10
  
  #add the cube of the digit to the running total
  sum_digits <- sum_digits + (firstdigit^3)
  
  #Q4: Display the result with an appropriate message
  
  #Determine if the sum of the cube of the digits is equal to the original input
  if (sum_digits == original_input){
    
    #print an appropriate message
    cat(original_input, "is a narcissistic number!")
  } else{
    
    #print an appropriate message if it is not a narcissistic number
    cat(original_input, "is not narcissistic number!")
  }
}


