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
  # using the modulo operator we can extract the last digit of the number
  lastdigit <- input %% 10
}


