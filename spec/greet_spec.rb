require 'greet'

RSpec.describe "greet method" do
  it "says Hello, name! when given a name" do
  result = greet("Eleanor")
  expect(result). to eq "Hello, Eleanor!"
  end
end