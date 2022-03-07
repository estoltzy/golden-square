require 'make_snippet'

RSpec.describe "make_snippet" do
  it "returns string" do
    result = make_snippet("")
    expect(result).to eq ""
  end

  it "returns <5 words" do
    result = make_snippet("lion")
    expect(result).to eq "lion"
  end

  it "returns 5 words and ..." do
    result = make_snippet("horse goes out to pasture this evening")
    expect(result).to eq "horse goes out to pasture..."
  end
end