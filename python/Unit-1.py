# Problem-1
# 1.Write a progi em that aaka the user for a weight in kilograms and converts it to pound.
# There are 2.2 pounda in a kilogram.

def kg_to_pounds():
    try:
        kilograms = float(input("Enter the weight in kilograms: "))
        pounds = kilograms * 2.20462
        print(f"The weight in pounds is: {pounds:.2f}")
    except ValueError:
        print("Invalid input. Please enter a numerical value for weight.")

kg_to_pounds()


# Problem-2
# 2.	Write a prngrani that uses a for loop to print the numbers 8, 11, 14, 17, 20, ...  , 83,
# 86, 89.
for loop

print("Using a for loop:")
for num in range(8, 90, 3):
    print(num)

# while loop

print("Using a while loop:")
num_while = 8
while num_while <= 89:
    print(num_while)
    num_while += 3



# Problem-3
# 3.	Split a string into array of characters in Python.

my_string = "hello"
char_list = list(my_string)
print(char_list)
Output: ['h', 'e', 'l', 'l', 'o']

my_string = "python"
char_list = []
for char in my_string:
    char_list.append(char)
print(char_list)
Output: ['p', 'y', 't', 'h', 'o', 'n']



# Problem-4
# 4.	Write a Pythnn program tn get the largest number from a list.

numbers = [10, 5, 23, 8, 42, 15]
largest_number = max(numbers)
print(f"The largest number in the list is: {largest_number}")


# Using if-else statements

numbers = [10, 5, 23, 8, 42, 15]

if not numbers:  # Handle the case of an empty list
    print("The list is empty.")
else:
    largest_number = numbers[0]  # Assume the first element is the largest initially
    for num in numbers:
        if num > largest_number:
            largest_number = num
    print(f"The largest number in the list (manual iteration) is: {largest_number}")



# Problem-5

# 5.	Write a Python program tn calculate the nth Fibonacci number using a function.

def fibonacci_iterative(n):
  
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        a, b = 0, 1
        for _ in range(2, n + 1):
            a, b = b, a + b
        return b


try:
    num = int(input("Enter the value of n to find the nth Fibonacci number: "))
    if num < 0:
        print("Please enter a non-negative integer.")
    else:
        result = fibonacci_iterative(num)
        print(f"The {num}th Fibonacci number is: {result}")
except ValueError:
    print("Invalid input. Please enter an integer.")


def fibonacci_memoization(n, memo={}):
 
    if n in memo:
        return memo[n]
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        memo[n] = fibonacci_memoization(n - 1, memo) + fibonacci_memoization(n - 2, memo)
        return memo[n]

try:
    num = int(input("Enter the value of n to find the nth Fibonacci number: "))
    if num < 0:
        print("Please enter a non-negative integer.")
    else:
        result = fibonacci_memoization(num)
        print(f"The {num}th Fibonacci number is: {result}")
except ValueError:
    print("Invalid input. Please enter an integer.")