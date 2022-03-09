class Todos
  def initialize
    @todos = []
  end

  def add_todo(new_todo)
  @todos.push(new_todo)
  end
  
  def print_todo
  @todos
  end

  def completed_todos(completed_todo)
  @todos.delete(completed_todo)
  return @todos
  end
end

todo_list = Todos.new
todo_list.add_todo("Paint the fence")
puts todo_list
