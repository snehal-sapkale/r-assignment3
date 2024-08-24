# 1. Write a program to read Celsius temperature and print equivalent Fahrenheit temperate on screen using R.

Prompt the user to enter temperature in Celsius
cat("Enter the temperature in Celsius: ")
celsius <- as.numeric(readLines(n=1))

# Convert the Celsius temperature to Fahrenheit
fahrenheit <- celsius * (9/5) + 32

# Display the Fahrenheit equivalent to the user
cat("The equivalent temperature in Fahrenheit is:", fahrenheit, "°F\n")

###########################################################################################################

# 2. Read radius of the circle from user and find the area and perimeter of it using R.

pi = 3.141592653589793

cat("Enter the radius of the circle: ")
radius <- as.numeric(readLines(n=1))

# Area = π × r2
area = pi * radius * radius
cat("Area of a Circle: ", area , "\n")

# The Circumference (or) perimeter of circle = 2πR

perimeter = 2 * pi * radius
cat("Perimeter of a Circle: ", perimeter)

###########################################################################################################

# 3. Read the amount and percentage of interest from the keyboard and find final amount after adding interest in original amount using R.

cat("Enter the amount: ")
amount <- as.numeric(readLines(n=1))

cat("Enter the percentage of interest: ")
interest_percentage <- as.numeric(readLines(n=1))


cat("Final amount: ", amount + interest_percentage)

###########################################################################################################

# 4. Write a program to read distance value in meters and convert it into centimeters, inches, and yards using R.

cat("Enter the  distance value in meters: ")
dist_meter = as.numeric(readLines(n=1))

cat("Distance value in centimeters: ", dist_meter * 100, "\n")
cat("Distance value in inches: ", dist_meter * 39.26, "\n")
cat("Distance value in yards: ", dist_meter * 1.0936)

###########################################################################################################

# 5. Write a Python program to calculate profit or loss. Input is selling cost and actual cost of a product using R.

cat("Enter the actual cost of a product: ")
actual_cost_of_a_product = as.numeric(readLines(n=1))

cat("Enter the selling cost of a product: ")
selling_cost_of_a_product = as.numeric(readLines(n=1))

# Profit = Selling Price (S.P.) - Cost Price (C.P.)
# Loss = C.P. – S.P.

if (selling_cost_of_a_product > actual_cost_of_a_product)
{
  loss = 0
  profit = selling_cost_of_a_product - actual_cost_of_a_product
  cat("Profit: ", profit, "\n")
  cat("Loss: ", loss)
}else if(selling_cost_of_a_product < actual_cost_of_a_product)
{
  profit = 0
  loss =  actual_cost_of_a_product - selling_cost_of_a_product
  cat("Loss: ", loss, "\n")
  cat("Profit: ", profit)
}else
  print("No Profit, No Loss")

###########################################################################################################

# 6. Write a program to input basic salary and find output of gross salary using following

cat("Enter the input basic salary: ")
basic_salary = as.numeric(readLines(n=1))

# DA = 75% of basic
da = 75/100 * basic_salary

# HRA = 20% of basic
hra = 20/100 * basic_salary

# Conditions:
# Basic < 10000 : gross = da + basic
# Basic >= 10000 and < 20000 : gross = da + basic + 50% of hra
# Basic >= 20000 : gross = basic + da + hra

if (basic_salary < 10000)
{
  gross_salary = da + basic_salary
}else if (basic_salary >= 10000 & basic_salary < 20000)
{
  gross_salary = da + basic_salary + 50/100 * hra
}else if (basic_salary >= 20000)
  gross_salary = basic_salary + da + hra

cat("Gross salary: ", gross_salary)


###########################################################################################################

# 7. Write a program to read a number from user and find the factorial of the number using R.
cat("Enter the number: ")
num = as.numeric(readLines(n=1))

fact = 1

if (num == 1 || num == 0)
{
  print("Enter number greater than 1 or 0")
}else
{
  fact = num

  while (num > 1)
  {
    fact = fact * (num -1)
    num = num - 1
  }
}

cat("Factorial for the number : ", fact)

###########################################################################################################

# 8. Write a program to read num1 and num2 from keyboard and find addition of all number between that range using R

cat("Enter the number 1: ")
num1 = as.numeric(readLines(n=1))
cat("Enter the number 2: ")
num2 = as.numeric(readLines(n=1))

add = 0

for (n in num1:num2)
{
  add = add + n
}

cat("Addition in the range is: ", add)


###########################################################################################################

# 9. Write a program to read a number from user. Create and use a user defined function to check whether it is odd or even using R?

cat("Enter the number: ")
num = as.numeric(readLines(n=1))

fnCheckEvenOdd <- function(num) 
{
  if((num %% 2) == 0)
  {
    return ("even")
  } else
  {
    return ("odd")
  }
    
}

result = fnCheckEvenOdd(num)

cat("Given number is: ", result)
###########################################################################################################

