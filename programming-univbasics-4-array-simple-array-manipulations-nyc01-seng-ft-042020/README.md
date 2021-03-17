# Introduction To Simple Array Manipulations - Part 2

## Learning Goals

- Identify the result of method calls on arrays
- Perform simple array manipulations

## Introduction

Now that we've covered the methods `.push`, `.unshift`, `.pop`, and `.shift`, we
can take a look at a few more specific methods. Just like the last lab, write
your methods in `lib/introduction_to_simple_array_manipulation.rb` using the descriptions below. Run `learn` to see the initial test failures, then periodically to see your progress.

Consult the official documentation on
[Ruby Arrays](https://ruby-doc.org/core-2.2.0/Array.html) for the methods you
need to use to solve the problems in this lab.

## Perform Simple Array Manipulations

<<<<<<< HEAD:programming-univbasics-4-array-simple-array-manipulations-nyc01-seng-ft-042020/README.md
Create the methods detailed below in
`lib/intro_to_simple_array_manipulations.rb`. Let's work through the first
together!

### `using_push`

This method takes in two parameters, an `Array` and a `String`. It adds that
string to the end of the array using the `.push` method.

To start, we know the method name, and that it takes in two parameters. We can
name theese parameters `array` and `string` for simplicity.

```ruby
def using_push(array, string)

end
```

With the method created, we can add the implementation. As we saw in the previous
example, we can append `.push` to any array, pass in a value, and that value will
get added to the array.

```ruby
def using_push(array, string)
  array.push(string)
end
```

Calling `array.push(string)` will return the updated array, which happens to be
what we `using_push` shoulds return. The rest are up to you solve!

### `using_unshift`

This method takes in two parameters, an `Array` and a `String` and adds that
string to the front of the array using the `.unshift` method.

### `using_pop`

This method takes in parameter of an `Array` and uses the `.pop` method to remove
the last element from the array and return that element.

### `pop_with_args`

This method takes in a parameter of an `Array` and uses the `.pop` method. This
time, however, pass an argument, `2`, into `.pop` to remove the last _two_ array
items and return them.

### `using_shift`

This method takes in a parameter of an `Array` and uses the `.shift` method to
remove the first item and return it.

### `shift_with_args`

This method takes in a parameter of an `Array` and uses the `.shift` method.
This time, pass an argument, `2`, into `.shift` to remove and return the first
_two_ items from the array.
=======
### `using_concat`

This method takes in two parameters of _two different_ arrays and uses the
[`.concat`][concat] method to add the contents of the second array to the first.

### `using_insert`

This method takes in two parameters, an `Array` and a new element to be added to
the array. it uses the [`.insert`][insert] method to add the new element to the 4th index
of the array.

### `using_uniq`

This method takes in a parameter of an `Array` and uses the [`.uniq`][uniq] method to
remove any duplicate items.

### `using_flatten`

This method takes in a parameter of an `Array` that contains other arrays and
uses the [`.flatten`][flatten] method to return an array of strings.

### `using_delete`

This method takes in two parameters, an `Array` and a `String`, and uses the
[`.delete`][delete] method to remove any items from the array that are equal to that
string.

### `using_delete_at`

This method takes in two parameters, an `Array` and an `Integer` and uses the
[`.delete_at`][delete_at] method to delete the element at the index of the array
that is equal to the provided integer.
>>>>>>> 632a9b38ee25c434f475d6dbf9470842a73e712a:README.md

## Conclusion

You have now used the most common methods built into Ruby arrays! Everh `Array`
can use these methods, giving you the power to modify them in whatever way you
need!

## Resources

* [Ruby Arrays](https://ruby-doc.org/core-2.2.0/Array.html)

[concat]: https://ruby-doc.org/core-2.5.0/Array.html#method-i-concat
[insert]: https://ruby-doc.org/core-2.5.0/Array.html#method-i-insert
[uniq]: https://ruby-doc.org/core-2.5.0/Array.html#method-i-uniq
[flatten]: https://ruby-doc.org/core-2.5.0/Array.html#method-i-flatten
[delete]: https://ruby-doc.org/core-2.5.0/Array.html#method-i-delete
[delete_at]: https://ruby-doc.org/core-2.5.0/Array.html#method-i-delete_at