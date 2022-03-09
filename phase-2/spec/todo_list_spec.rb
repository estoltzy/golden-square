require 'todo_list'

RSpec.describe Todos do
  it 'returns the todo as a string' do
    todo_list = Todos.new
    todo_list.add_todo("Paint the fence")
    expect(todo_list.print_todo).to eq ["Paint the fence"]
  end

  context 'given two tasks' do
    it 'prints two tasks in the list' do
      todo_list = Todos.new
      todo_list.add_todo("Paint the fence")
      todo_list.add_todo("Wash the car")
      expect(todo_list.print_todo).to eq ["Paint the fence", "Wash the car"]
    end
  end

  context 'given a completed task' do
    it 'removes completed task and returns remaining task' do
      todo_list = Todos.new
      todo_list.add_todo("Paint the fence")
      todo_list.add_todo("Wash the car")
      todo_list.completed_todos("Paint the fence")
      expect(todo_list.print_todo).to eq ["Wash the car"]
    end
  end
end