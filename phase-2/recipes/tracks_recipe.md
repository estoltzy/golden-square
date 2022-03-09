# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicHistory
  def initialize(artist, song) # initialize a hash of strings
  end

 def add_track(new_artist, new_track)
  # adds a new artist and track line to the hash
  end

  def print_tracklist
  # prints track list
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
track_list = MusicHistory
track_list.add_track("Biffy Clyro", "Space")
track_list.print_tracklist # => "Biffy Clyro", "Space"

# 2
track_list = MusicHistory
track_list.add_track("Killing in the Name Of", "Rage Against the Machine")
track_list.print_tracklist # => [("Biffy Clyro", "Space"), "Killing in the Name Of", "Rage Against the Machine"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

