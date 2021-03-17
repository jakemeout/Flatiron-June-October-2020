# Simple Nesting Lab

## Learning Goals

- Access data from a nested hash
- Add data to and change data within a nested hash

## Introduction

Now that we've seen some examples of nested hashes, the next step is to get more
comfortable with using them. In this lab, we're going to practice accessing and
updating data within a nested hash and review what we've covered so far.

## Instructions

In this lab, you'll be filling out the content of a series of methods that we've
defined for you. All of the methods expect you to operate on the
`programmer_hash` object, which is already defined and included in the body of
each method.

Use the comments in `nested.rb` and test suite to guide you. Each test is
designed to tell you how to pass it.

Keep in mind that you are expected to get these tests to pass by adding or
changing information in the hash *programmatically*. In other words, if you're
asked to, for example, change the value of a specific hash key, *don't just
re-write the hash with the new value!* Use the methods we've learned and
practiced in previous lessons.

To quickly review, here is an example of adding data to a hash
programmatically:

```ruby
# good example

my_hash = {first: "I'm first!", second: "I'm second!"}
my_hash[:third] = "I'm third!"

puts my_hash
# > {first: "I'm first!", second: "I'm second!", third: "I'm third!"}
```

Changing a hash by simply re-defining it is not the goal of this lab:

```ruby
# bad example

my_hash = {first: "I'm first!", second: "I'm second!"}
my_hash = {first: "I'm first!", second: "I'm second!", third: "I'm third!"}
```

**Hint:** In some of these methods, you will need to alter `programmer_hash`,
then make sure to _return_ the entire hash, not just the altered value.

### `hopper`

This method should return the value of the `:grace_hopper` key inside
`programmer_hash`.

### `alan_kay_is_known_for`

This method should return what Alan Kay is known for.

### `dennis_ritchies_language`

This method should return the language that Dennis Ritchie is known for.

**Note:** The `:languages` keys inside `programmer_hash` each store an array. In
this case, the test is looking for the value stored in that array.

### `adding_matz`

This method should return a modified `programmer_hash` to honor Matz, the
creator of Ruby. Update the hash so that:

- there is a `:yukihiro_matsumoto` key alongside `:grace_hopper`, `:alan_kay`,
  and `:dennis_ritchie` set to a hash
- this nested hash contains `:known_for` and  `:languages` keys like the others

Matz is known for `"Ruby"`, but his languages should be `"LISP"` and `"C"`.
Return the entire updated hash.

### `changing_alan`

This method should update what Alan Kay is known for to `"GUI"` and return the
updated `programmer_hash`.

### `adding_to_dennis`

This method should add `"Assembly"` to Dennis Ritchie's languages array and
return the updated `programmer_hash`.

## Conclusion

Adding and updating data in a nested hash is just like adding and updating an
ordinary hash. If we know the structure, it is just a matter of using the right
combination of keys.

As we see examples of more complex data structures, we'll start to encounter
situations where we aren't 100% of the structure of a hash. This is one reason
why getting familiar with programmatically changing hash data is critical - we
won't always be able to _see_ the hash we're changing. Instead, we'll have to
write logic that and correctly handles accessing and updating hash data in a
more abstracted way.
