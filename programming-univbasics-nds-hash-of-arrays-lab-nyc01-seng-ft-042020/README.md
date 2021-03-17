# Hash of Arrays

## Learning Goals

1. Recognize vocabulary term: "hash of arrays"
2. Create a `Hash` of `Array`s
3. Read scalar data from a `Hash` of `Array`s
4. Modify scalar data in a `Hash` of `Array`s

## Introduction

The final "basic" nested structure is the `Hash` of `Array`s.

### Key Image: Result Set

The key image is to think of a result set. You might think of it as a weather
report for a day where you sample different measurements multiple times per
day. You might track `:temperature` at midnight, noon, and 6:00 p.m.;
`:rainfall_level` at midnight, noon, and 6:00pm; and `:humidity` at midnight,
noon, and 6:00pm. Those sample results would go inside of `Array`s that are
accessible via the keys `:temperature`, `:rainfall_level`, and `:humidity`.

## Recognize Vocabulary Term: "Hash of Arrays"

"`Hash` of `Array`s" is an infrequently used term. As you get more experienced
with Ruby, it's typical to merely know that a `Hash`'s key might point to
scalar values (`1.0`, `"Smith"`) or to an `Array`. While we're starting out
with learning Ruby, though, let's briefly take time to acknowledge that this
basic NDS exists.

## Create a `Hash` of `Array`s

It's most common to create `Hash` of `Array`s in the "literal" format. We'll
build on our weather example.

```ruby
daily_weather = {
  temperature: [75, 80, 72],
  precipitation: [0.0, 0.01, 0.03]
  wind_velocity: [4, 3, 2]
  barometric_pressure: [30.32, 30.30, 30.20]
}
```

## Read Scalar Data from a `Hash` of `Array`s

To read data from a `Hash` of `Array`s we provide:

1. A key name
2. An index

```ruby
daily_weather = {
  temperature: [75, 80, 72],
  precipitation: [0.0, 0.01, 0.03]
  wind_velocity: [4, 3, 2]
  barometric_pressure: [30.32, 30.30, 30.20]
}

# Addition
daily_weather[:temperature][2] #=> 72

# Access the whole Array
daily_weather[:temperature] #=> [75, 80, 72]

```

## Modify scalar data in a `Hash` of `Array`s

Again, providing a key and an index will let you modify the inner `Array`s:

```ruby
daily_weather = {
  temperature: [75, 80, 72],
  precipitation: [0.0, 0.01, 0.03],
  wind_velocity: [4, 3, 2],
  barometric_pressure: [30.32, 30.30, 30.20]
}

daily_weather[:temperature][2] = 74 #=> 74
daily_weather[:temperature][2] #=> 74
```

Most often, we modify data in an HoA by using the _key_ to get a hold of the
`Array` so that we can use `Array` methods on the inner `Array`. Let's suppose
we're adding new measurements for the day.

```ruby
daily_weather = {
  :temperature => [75, 80, 72],
  :precipitation => [0.0, 0.01, 0.03],
  :wind_velocity => [4, 3, 2],
  :barometric_pressure => [30.32, 30.30, 30.20]
}

daily_weather[:temperature] << 76 #=> [75, 80, 72, 76]
daily_weather[:precipitation] << 1.01 #=> [0.0, 0.01, 0.03, 1.01]
daily_weather[:wind_velocity] << 2.2 #=> [4, 3, 2, 2.2]
daily_weather[:barometric_pressure] << 28.0 #=> [30.32, 30.3, 30.2, 28.0]
```

## Lab

Guided by the tests, make sure that you are able to update and read from a HoA.

## Conclusion

This concludes our learning of the "basic" nested data structures

* Arrays of Arrays
* Arrays of Hashes
* Hashes of Hashes
* Hashes of Arrays

By mixing these four "basic" nested data structures, we can build complex data
structures that model our world's complexity as a data structures which Ruby
can process &mdash; with our help! &mdash; to generate _insights_.
