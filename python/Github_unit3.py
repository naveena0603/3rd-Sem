# 1. Write a NumPy program using methods – info, add, array, all, greater, 
# greater_equal, less, less_equal, equal, allclose, zeroes, ones, linespace, tolist.

# (a)  To get help on the add function.

import numpy as np

# Get help on the numpy.add function
help(np.add)
# or in an interactive environment like Jupyter:
# np.add?

# (b) To test whether none of the elements of a given array is zero.

import numpy as np 

# Create a sample array with no zeros 
arr1 = np.array([1, 2, 3, 4, 5]) 

# Create a sample array with a zero 
arr2 = np.array([1, 0, 3, 4, 5]) 

# Check if none of the elements are zero 
is_none_zero_1 = np.all(arr1 != 0) 
is_none_zero_2 = np.all(arr2 != 0) 

print("Array 1:", arr1) 
print("Are none of the elements zero?", is_none_zero_1) 
print("\nArray 2:", arr2) 
print("Are none of the elements zero?", is_none_zero_2)

# (c) To create am element – wise comparison (greater, greater_equal, less, 
# less_equal, equal within a tolerance) of two given arrays.

# Create two sample arrays
arr1 = np.array([1, 2, 3, 4, 5])
arr2 = np.array([1, 2, 3, 4, 5.000000001])
print("Array 1:", arr1)
print("Array 2:", arr2)
# Element-wise comparisons
print("\nGreater than:", arr1 > arr2)
print("Greater than or equal to:", arr1 >= arr2)
print("Less than:", arr1 < arr2)


# 2.  Write a NumPy program using NumPy methods – max, min, 
# argmax, argmin, repr, count, bincount, unique.

# (a) To extract all numbers from a given array which are less and greater than a specific number.

import numpy as np

# Create a sample NumPy array
data = np.array([12, 5, 25, 7, 30, 18, 9, 45, 15])

# Define the range to filter by
min_val = 10
max_val = 20

print("Original array:", data)
print(f"Filtering for numbers between {min_val} and {max_val}...")

# Use boolean indexing to create a mask for elements in the range
filtered_data = data[(data > min_val) & (data < max_val)]

print("Extracted numbers:", filtered_data)

# (b) To find the indices of the maximum and minimum numbers along the given axis of an array.

import numpy as np

# Create a sample 2D NumPy array
arr = np.array([[10, 20, 5],
                [15, 3, 25],
                [30, 8, 12]])

print("Original array:")
print(arr)

# Find the indices of the maximum values along each row (axis=1)
max_indices = np.argmax(arr, axis=1)

# Find the indices of the minimum values along each row (axis=1)
min_indices = np.argmin(arr, axis=1)

print("\nIndices of the maximum values along each row:", max_indices)
print("Indices of the minimum values along each row:", min_indices)

# To verify, you can use these indices to get the actual max and min values
max_values = arr[np.arange(len(arr)), max_indices]
min_values = arr[np.arange(len(arr)), min_indices]

print("\nMaximum values:", max_values)
print("Minimum values:", min_values)

