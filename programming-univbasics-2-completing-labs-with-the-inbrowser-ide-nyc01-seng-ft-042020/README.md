# Completing Labs with the In-Browser IDE

## Learning Goals

- Complete your first lab

## Introduction

Hello, and welcome to your first lab! In this lesson, we're going to test some
code. _Your code_.

So far, we've learned that we can run code by using `ruby filename`. Whatever is
written in that file will be executed.

In media, programmers are often [portrayed][hackers] [as][matrix]
[semi-mystical][the social network] [masterminds][ex machina]. They type really
fast and can write a prolific amount of code in a single sitting that works
without errors.

[hackers]: https://en.wikipedia.org/wiki/Hackers_(film)
[matrix]: https://en.wikipedia.org/wiki/The_Matrix
[the social network]: https://en.wikipedia.org/wiki/The_Social_Network
[ex machina]: https://en.wikipedia.org/wiki/Ex_Machina_(film)

While there are some incredibly skilled programmers out there, the reality is
that most programmers don't do this. Professional programming takes process and
consideration and time. Programs take a lot of effort to build and can quickly
get very complicated. Programmers make mistakes - you will experience errors. Many
errors.

It is common for programmers to run (and rerun, and rerun) code over and over as
they build a program. One main reason for this is that it helps catch errors as
they happen. If running a Ruby file causes an error, but the file worked fine
just a few minutes ago, something has changed during that time that has broken
the code. The error will also contain some information about what went wrong.

Removing errors and debugging your code is something you will become more
familiar with over time, and we will introduce some tools and methods for
debugging in upcoming lessons. For now, though, we're going to introduce another
important programming concept - _testing_ our code.

A test is Ruby code that _runs_ Ruby code to verify the output. Tests are a way to receive feedback
continuously as you write your code. In professional program development, tests
are often written to ensure code works as intended. For instance, tests can help
prevent bugs from being introduced with updates - i.g. Some new code might break
something that was previously working.

In this course, we are going to use tests slightly differently. Tests will be
provided in every lab - you must write the code to satisfy the tests. When your
tests pass, you'll be ready to move on to the next lesson.

This first lab has a single test. In an earlier lesson, we walked through adding 
a line of code in a file and running the file. We're going to test these abilities
while you learn how to use the IDE.

## Opening the Lab

First, open the in-browser IDE. Note that since this is a lab, instead of the
**Sandbox** button, there is an **Open IDE** button. Clicking this will still
open the IDE. However, instead of the Sandbox, the IDE will display files
specific to this lesson. 

In the terminal at the bottom, you will likely see some activity as the IDE is
setting up the lesson. You will be ready to start when this is finished and you
can type in the console.

## Running Tests and Submitting Your Work

For all labs provided through Learn, to run a test, type `learn` into the command
line. This command will run the tests and report the results back to the Learn
platform.

You can and should run `learn` often while you are working on labs. Every time you do,
you get feedback in the form of test output. This output often includes hints on what
you need to do to. If your code is passes the tests, you'll see `0 failures`. Learn will
also recognize your success and change the status lights to the right of the IDE. 

Once you've passed all of the tests, you must submit your work to register completion in
Learn. You can do this by running `learn submit`. Once your work is submitted, you can
continue to the next lesson when ready.

## Instructions

You have a single task to complete in this lab:

- the file `lib/your_solution.rb` should output `"Hello World!"` using `puts`

You might be able to figure this out without test feedback. For this first lab, though,
we encourage you to follow along below to get a sense of the workflow for solving labs.

## Solving This Lab

For the next few labs, we will walk through the solution. We encourage you
to try on solving on your own, but if you get stuck, use the lesson's instructions
to guide you to the solution.

As you progress,
labs will become more difficult, and it will be up to you to try solutions, read
test feedback, and modify your code without direct guidance.

When starting a lab, it is often good to first take a look at the results of the
tests, even though we know they aren't passing. Run `learn`, and you should see
the following:

```sh
lib/your_solution.rb
  should output "Hello World!" when run (FAILED - 1)

Failures:

  1) lib/your_solution.rb should output "Hello World!" when run
     Failure/Error: expect(STDOUT).to receive(:puts).with('Hello World!')

       (#<IO:<STDOUT>>).puts("Hello World!")
           expected: 1 time with arguments: ("Hello World!")
           received: 0 times
     # ./spec/first_lab_spec.rb:5:in `block (2 levels) in <top (required)>'

Finished in 0.00552 seconds (files took 0.18637 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/first_lab_spec.rb:4 # lib/your_solution.rb outputs "Hello World!" when run
```

Reading through this, there is a lot of useful info, even if some of it doesn't
make sense yet. For now, let's focus on the first two lines:

```sh
lib/your_solution.rb
  outputs "Hello World!" when run (FAILED - 1)
```

This text explains what is being tested. `lib/your_solution.rb` should output
`"Hello World!"` when run. If you take a look at the files for this lesson, a
folder is present called `lib`, and in it is a file `your_solution.rb`.

If we run `ruby lib/your_solution.rb` right now, nothing happens. Let's change
that!

In the previous lesson, we learned about outputting text, and that is what we
need to do here. Add the following code to `lib/your_solution.rb`:

```ruby
# ./lib/your_solution.rb
puts "Hello World!"
```

Now, when you run `ruby lib/your_solution.rb`, you'll see:

```sh
Hello World!
```

And if you run `learn`, you will find you have passed the test!

```sh
lib/your_solution.rb
  should output "Hello World!" when run

Finished in 0.00568 seconds (files took 0.19164 seconds to load)
1 example, 0 failures
```

> **Note:** We know from the last lesson that `puts` is not the only way to
> output text. _However_, if you read the original test results closely you'll
> see that the test is specifically looking for `puts`:
>
> ```sh
> expect(STDOUT).to receive(:puts).with('Hello World!')
> ```
>
> There may be times when you've written perfectly valid code, but it isn't
> what the test is looking for.

## Submitting Your Work

With this test passing, you are almost ready to move on. The last thing you need
to do is submit your work. To do this, run `learn submit`. You should see a
change in Learn indicating you've completed the lesson and can continue.

## Conclusion

We believe that labs give you a chance to practice your skills. In Programming
as Conversation Part 1, we just wanted you to feel the magic and awesomeness of
programming. We didn't want to crimp that joy with labs. But now you know enough
to do some pretty powerful stuff. Tests will confirm for both you and us that
you're really getting the hang of this stuff. That's such an excellent feeling,
and we can't wait to share it with you!

Several upcoming labs will review and expand on the concepts discussed here, so
don't worry if some of the test output didn't make sense. We'll walk you through
the first few labs. Eventually, we'll take a more-in-depth look at how testing
works so you can not only understand how our labs work, but how to write your
own!
