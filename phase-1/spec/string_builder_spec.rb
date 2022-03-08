require 'string_builder'

RSpec.describe Stringbuilder do
  it "returns initial string length" do
    string_builder = Stringbuilder.new
    expect(string_builder.output). to eq ""
  end

  it "initially returns a length of 0" do
    string_builder = Stringbuilder.new
    expect(string_builder.size). to eq 0
  end

  it "returns string length of strings added together" do
    string_builder = Stringbuilder.new
    string_builder.add("eleanor")
    expect(string_builder.output). to eq "eleanor"
  end
end