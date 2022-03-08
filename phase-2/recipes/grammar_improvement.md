# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

uppercase_start = locate_uppercase(text)
correct_punctuation = punctuation(text)

text: a string (e.g. "hello WORLD")
locate_uppercase: a list of strings
punctuation: a list of strings

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE
locate_uppercase("") => []
punctuation("") => []
locate_uppercase("Good morning!") => true
punctuation("Good morning!") => true
locate_uppercase("good morning") => "You need to capitalize!"
punctuation("good morning") => "Don't forget punctuation!"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

