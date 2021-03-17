# Using Loops and Arrays to Find Data

## Learning Goals

- Work with arrays and loops to extract specific values
- Use loops to compare values in an array

## Introduction

In the previous lab, we looped through arrays to find elements. In discussing
how to solve the lab, multiple solutions were discussed - one solution looped
through the entire array and the other stopped as soon as a matching element was
found.

In this lab, we are going to look at a slightly more complex task. We still want
to find a specific array element, but this time, we won't have a provided value
to compare with. Instead, we will need to find an element based on its value
_relative to the other elements in the array._

Your task is to write a method that finds the element in an array with the
highest value. This is often referred to as finding an array's **maximum**
value.

Because you need to find an array element relative to other elements, we **must
loop over every element of the array**. We can' be certain that one element is
the maximum if we haven't checked every other element!

## Instructions

For this lab's tests, assume all arrays are sets of **positive integers**. The
`find_max_value` method and parameter name are provided for you in
`lib/finding_the_maximum_value.rb`. 

The `find_max_value` takes in an array of integers and should return whichever
_integer_ in the array has the highest value. So, for instance, if we ran the
following:

```sh
2.6.1 :005 > find_max_value([1,2,1,3,4,3,5,4,3,2,1])
 => 5
```

We should expect to receive `5` in return. Remember when writing your
implementation, you will need to check _every_ number in a given array.

Remember again to check every element in the provided array! Try your best to
solve this lab. A walkthrough is provided below to verify your understanding and
help you if you get stuck.

...

...

...

## Solving this Lab

Since we're comparing array elements, to start, we know we will need a loop to
access every element.

```rb
def find_max_value(array)
  count = 0
  while count < array.length do

    count += 1
  end
end
```

The instructions state that we will always be working with arrays of positive
integers, but how can we compare them to one another?

One way is to use a variable (let's call it `max_value`) - assign a variable a
value that is _lower_ than any possible value in the array. When looping over
array elements, if an element's value is greater than the `max_value` variable,
`max_value` gets reassigned to equal the element's value. `max_value` is then
returned at the end:

```rb
def find_max_value(array)
  count = 0
  max_value = -1
  while count < array.length do
    if max_value < array[count]
      max_value = array[count]
    end
    count += 1
  end
  max_value
end
```

Let's think about how this works. Consider the following array:

```rb
[2, 3, 3, 4, 3, 6, 1, 3]
```

If this array was passed into `find_max_value`, the following steps would occur:

- `count` gets assigned to `0`
- `max_value` gets assigned to `-1`
- In the `while` loop initiates and `count < array.length` evaluates to true
  (`0`is less than `8`), so the implementation inside the loop executes
  - `max_value` is less than `array[count]` (`-1` is less than `2`).
  - `max_value` is reassigned to `2`.
  - `count` is assigned to `1`
- `count < array.length` again evaluates to true (`1` is less than `8`)
  - `max_value` is less than `array[count]` (`2` is less than `3`).
  - `max_value` is assigned to `3`.
  - `count` is assigned to `2`
- `count < array.length` again evaluates to true (`2` is less than `8`)
  - `max_value` is NOT less than `array[count]` (`3` is equal `3`).
  - `max_value` is not reassigned, staying at `3`
  - `count` is assigned to `3`
- `count < array.length` again evaluates to true (`3` is less than `8`)
  - `max_value` is less than `array[count]` (`3` is less than `4`).
  - `max_value` is reassigned to `4`
  - `count` is assigned to `4`

Eventually, `max_value` gets reassigned to `6`, where it will stay until the
loops finish. This is the maximum value in the array.

## Conclusion

Finding the maximum value in a collection is extremely common in all sorts of
applications.

- Given an array of hourly temperatures, what is today's high?
- Who is the tallest person in a line?
- What was the high point of the stock market this week?

Even if we don't have a specific value we're looking for, we now have a way to
work through a collection of data and pull out useful values.

## Resources

- [Arrays](https://ruby-doc.org/core-2.5.3/Array.html)
