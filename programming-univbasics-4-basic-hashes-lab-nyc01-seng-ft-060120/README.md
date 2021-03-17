# Intro to Hashes Lab

## Learning Goals

- Build simple hashes.

## Introduction

It's time to practice what we've learned about Ruby hashes. In this lab, your
task is to implement a set of three methods. Each method will require you to
complete some basic hash creation.

## Instructions

Code your solutions for the following four methods in the
`lib/intro_to_ruby_hashes_lab.rb` file.

1. Implement a method called `new_hash` that creates and returns a new, empty
   hash.

2. Implement a method called `my_hash` that returns a valid hash. This hash should
   have at least one key/value pair of your choice.

3. Implement a method called `pioneer` that returns a hash. This hash should have a
   key that is a symbol `:name` and whose value is a string, `'Grace Hopper'`.

4. Implement a method called `id_hash_generator` that takes in one parameter, an
   integer. This method should create and return a hash with a key `:id` with
   the integer as the value.

Try your best to solve these. Use `learn` and follow the test suite messages as
you work through your solution and `learn submit` when you're finished with your
work. Check out the walkthrough below if you get stuck.

## Solving this Lab

The four methods we'll be working in are already provided in
`lib/intro_to_ruby_hashes.rb`, so all we need to do is write the implementation
for each.

The first method, `new_hash`, should return a new, empty hash. The most direct way
to do this is to write a hash in its implicit form:

```rb
def new_hash
  {}
end
```

Alternatively, we could explicitly create a new `Hash`:

```rb
def new_hash
  Hash.new
end
```

But we don't see this as often.

When first learning to work with hashes, it is common to think we always need to
assign it to a variable, so your solution might look like this:

```rb
def new_hash
  hash = {}
  hash
end
```

Or even this:

```rb
def new_hash
  hash = {}
end
```

While both of these are valid code and return an empty hash, the variable is not
needed. All that matters is what gets returned. Because Ruby methods use
implicit return, when we create a hash using `{}`, we can return that directly.

For the second method, `my_hash`, we will also return a hash. This hash must have some
key/value pair included. Your choice.

```rb
def my_hash
  { :favorite_color => "blue" }
end
```

When using symbols for keys, we can write key/value pairs as seen above, or
with the alternative syntax:

```rb
def my_hash
  { favorite_color: "blue" }
end
```

For the third method, `pioneer`, the task is the same as the previous method.
Except this time, the key should be `:name` and the value should be `Grace
Hopper`:

```rb
def pioneer
  { name: "Grace Hopper" }
end
```

In the final method, `id_hash_generator`, we need to use a parameter. This
parameter should be assigned to the `:id` key in a hash, and the hash should be
returned. Similar to the previous methods, we return a hash, giving it one key.
The value will be set to whatever the parameter is:

```rb
def id_hash_generator(number)
  { id: number }
end
```

## Conclusion

Hashes are an essential data type that we will use frequently. Now that you've
practiced the basics of creating hashes, we will practice reading and updating
them.

## Resources

- [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
- [Ruby Documentation on Hashes](https://ruby-doc.org/core-2.5.1/Hash.html)

[rand]: https://ruby-doc.org/core-2.5.0/Random.html
