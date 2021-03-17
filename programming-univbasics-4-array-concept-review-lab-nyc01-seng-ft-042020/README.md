# Using Loops and Arrays to Find Data

## Learning Goals

- Work with arrays and loops to extract specific values
- Use loops to compare values in an array

## Introduction

We've stepped away from the idea of programming as conversation in these last
few lessons. But now that you understand what an Array is and how it mirrors
real life, you might realize that you've been working with Arrays all the time!

* Do any of the children have a runny nose?
* Do all of the children have a runny nose?
* "Is there a doctor in the house?"
* Do all of the dogs have their rabies vaccination?
* Who is the fastest runner?
* What is lowest temperature Maui will see during my vacation?

Given an Array with the appropriate data, you now have the ability to loop
through it and return the critical bit of information.

We're going to practice working with arrays and loops in a bit
more depth. We will be using them to implement three common patterns:

- Looping through an array to find the position of a value
- Finding a maximum value in an array
- Finding a minimum value in an array

## Instructions

For this lab's tests, assume all arrays are sets of **positive integers**. The
methods and parameter names are provided for you in `lib/array_methods.rb`.

> *ASIDE*: For every test in the "Array" of tests, make sure you can pass it so
> you can move to the next lesson ;)

Write the implementation for each of these methods that solves the tests.

### Finding Where an Element is Located on an Array

The first method, `find_element_index(array, value_to_find)`, takes in two
parameters, an array of integers and a value to find. This method should
return the _index_ of the value that was passed in. If the value is not found,
this method should return `nil`.

To implement this method, you will need loop over the provided array and compare
each value in the array to the value provided. Remember though, that this is
_not_ the value that needs to be returned

### Finding a Maximum Value

The second method, `find_max_value(array)`, takes in an array of integers. This
methods should return whichever integer in the array has the highest value. So,
for instance, if we ran the following:

```ruby
find_max_value([1,2,1,3,4,3,5,4,3,2,1])
```

We should expect to receive `5` in return. Remember when writing your
implementation, you will need to check _every_ number in a given array

### Finding a Minimum Value

Similar to the previous, `find_min_value(array)`, takes in an array of integers.
This method should return whichever integer in the array has the lowest value.

```ruby
find_min_value([10,5,3,7,19,1,3,10])
```

We should expect to receive `1` in return.

## Conclusion

Learning to master using a collection to answer a question is usually
accomplished by looping through a collection data type (either an Array or
Hash). You might notice some similar coding between these various solutions,
that suggests that there might be an awesome way to DRY out this code (and
you'll see it very soon!).

While coding these implementations might feel repetitive after a while, they
are worthwhile to practice.  They ensure that you can reason clearly about how
to use collection data to answer questions and they're commonly used in
interviews.  From there, it is only a few small conceptual steps to highly
complex algorithms.

## Video Walkthrough

Try to solve this by yourself and give it your best, but if you get stuck 
checkout this video walkthrough:

[Video Walkthrough](https://www.youtube.com/watch?v=eEIP3wliWcY)

<iframe width="640" height="480" src="https://www.youtube.com/embed/eEIP3wliWcY" frameborder="0" allowfullscreen></iframe>

## Resources

- [Arrays](https://ruby-doc.org/core-2.5.3/Array.html)
