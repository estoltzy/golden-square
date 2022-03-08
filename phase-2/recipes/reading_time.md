# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# 'reading time' 
reading_time = words_per_minute(text)

# text: a string (e.g. "the brown cat jumped over the dog")
# words_per_minute: divides number of text words by 200

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

words_per_minute("") => 0
words_per_minute("the brown cat jumped over the dog ha ha ha") => 0.05
words_per_minute("one") => 1
words_per_minute(TWO_HUNDRED_WORDS) => 1
words_per_minute(THREE_HUNDRED_WORDS) => 2
words_per_minute(FIVE_THOUSAND_WORDS) => 25

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

