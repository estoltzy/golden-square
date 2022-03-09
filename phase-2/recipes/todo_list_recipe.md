# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Todo
  def initialize 
    # global variable todos
  end

  def add_todo(new_todo)
  # adds a new todo to the array list
  end

  def print_todo
  # prints todo list
  end

  def completed_todos(completed_todo)
  # removes completed todo from the array list
  # prints updated todo list
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo_list = Todos
todo_list.add_todo("Paint the fence")
todo_list.print_todo # => "Paint the fence"

# 2
todo_list = Todos
todo_list.add_todo() # fails with "No todo added."

# 3
todo_list = Todos
todo_list.add_todo("Pick up medicine")
todo_list.print_todo # => ""Paint the fence", "Pick up medicine""

# 4
todo_list = Todos
todo_list.completed_todos("Paint the fence")
todo_list.print_todo # => "Pick up medicine"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

