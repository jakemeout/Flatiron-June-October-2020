# Using Loops and Arrays to Find Data

## Learning Goals

- Work with arrays and loops to extract specific values
- Use loops to compare values in an array

## Introduction

In the last lab, you were tasked with finding the maximum value in an array. For
this last lab on working with arrays, your task is to do the opposite - find the
_minimum_ value in an array. This time, it'll be entirely up to you to solve
this using what you've learned and the test output as guidance.

## Instructions

For this lab's tests, assume all arrays are sets of **positive integers**. The
`find_min_value` method and required parameter are provided for you in
`lib/find_the_minimum.rb`. Write the implementation for this method, using
`learn` to track your progress.

### Finding a Minimum Value

The `find_min_value(array)` takes in an array of integers. This method should
return whichever integer in the array has the lowest value.

```ruby
find_min_value([10,5,3,7,19,1,3,10])
```

We should expect to receive `1` in return.

## Conclusion

Learning to master using a collection to answer a question is usually
accomplished by looping through a collection data type (either an Array or
Hash). You might notice some similar coding between this solution and the last
two labs. That suggests that there might be an awesome way to DRY out this code
(and you'll see it very soon!).

While coding these implementations might feel repetitive after a while, they
are worthwhile to practice.  They ensure that you can reason clearly about how
to use collection data to answer questions and they're commonly used in
interviews.  From there, it is only a few small conceptual steps to highly
complex algorithms.

## Resources

- [Arrays](https://ruby-doc.org/core-2.5.3/Array.html)
