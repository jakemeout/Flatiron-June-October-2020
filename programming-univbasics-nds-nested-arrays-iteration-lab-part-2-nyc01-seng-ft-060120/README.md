# Nested Data Structures: Mapping Data Lab

## Introduction

In this lab, we're going to extract some information from a nested data
structure. We will again be using an `Array` of `Array`s and two `while` loops
to handle the iteration. However, this time, you will need to collect specific
values and return them in a new array.

## Traverse `Array` of `Array`s to Produce a New Data Structure

The same "formula" that we suggested in the last lab can easily be adapted for
doing work other than `puts`-ing things. Let's say we wanted to gather all the
elements that start with `P` into a new array.

```rb
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]

outer_results = []
row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  while element_index < spice_rack[row_index].count do
    # How to read the following line of code:
    #   Array at row_index
    #   Element of the inner array at element_index
    #   The first character of that element...
    if spice_rack[row_index][element_index][0] == "P"
      outer_results << spice_rack[row_index][element_index]
    end
    element_index += 1
  end
  row_index += 1
end

outer_results #=>  ["Posh", "Paprika", "Parsley"]
```

We might say we are _filtering_ the values in this data structure. When you
learn Ruby's Enumerable methods in just a little while, remembering this name
will help a lot!

A slight variation on this code will allow us to _compare_ values - handy for
when we need to do things like find a maximum or minimum value. Say, for
instance, we wanted to collect the longest string in each nested array from our
previous example. Instead of using a conditional to check for `"P"`, we could
use a variable to keep track of the longest string.

```rb
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]

outer_results = []
row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  longest_string_element = ""
  while element_index < spice_rack[row_index].count do

    # Array at row_index
    # Element of the inner array at element_index
    # If the length of the current element is greater than the length of longest_string_element
    # Set longest_string_element to the current element
    if spice_rack[row_index][element_index].length > longest_string_element.length
      longest_string_element = spice_rack[row_index][element_index]
    end
    element_index += 1
  end

  # We have to check every element in each inner array, so after the loop finishes
  # The current value of longest_string_element is pushed into outer_results
  outer_results << longest_string_element
  row_index += 1
end

outer_results # => ["Sporty", "Fajita Mix", "Rosemary"]
```

## Instructions

For this lab, imagine you are working with a bit of weather data - you have the
hourly local temperatures for the last seven days in an array of arrays, and you
would like to find the low temperature for each day.

Write a method, `find_min_in_nested_arrays` that can take in an array of arrays
of integers. This method should collect the minimum value in each nested array
into a new array and return it. If we had the following data:

```rb
array_of_daily_temperatures = [
  [19, 21, 24, 26, 30, 34, 37, 39, 40, 45, 48, 50, 55, 60, 63, 59, 49, 45, 40, 39, 34, 32, 25, 18],
  [17, 18, 22, 26, 31, 35, 38, 40, 43, 45, 49, 52, 55, 61, 60, 59, 55, 49, 45, 38, 32, 30, 24, 19],
  [13, 15, 20, 23, 33, 37, 39, 41, 45, 48, 50, 53, 57, 62, 61, 58, 52, 48, 44, 36, 35, 31, 23, 20],
  [19, 20, 25, 28, 30, 35, 38, 40, 41, 46, 48, 51, 56, 60, 59, 55, 50, 45, 43, 39, 36, 34, 25, 24],
  [21, 25, 28, 30, 35, 41, 47, 49, 50, 55, 56, 57, 58, 64, 63, 58, 49, 44, 42, 36, 33, 33, 27, 20],
  [25, 29, 30, 36, 39, 45, 49, 50, 52, 57, 58, 59, 60, 66, 65, 59, 54, 49, 45, 40, 36, 30, 26, 24],
  [30, 36, 38, 39, 40, 45, 47, 49, 50, 59, 60, 60, 65, 63, 61, 56, 49, 43, 40, 39, 35, 32, 23, 22],
]
```

And we passed in into our method:

```rb
find_min_in_nested_arrays(array_of_daily_temperatures)
```

We should expect to get the following array in return:

```rb
[18, 17, 13, 19, 20, 24, 22]
```

Use `learn` to check your solution and `learn submit` to submit your work.

## Conclusion

Sometimes data is not in a format that is useful to us. Sometimes, there is so much data, it
would be difficult to visually extract information out. Mapping over data structures and extracting
what we want is a very helpful ability in these situations. We can turn data into what we need and
shape it in a way that suits us.
