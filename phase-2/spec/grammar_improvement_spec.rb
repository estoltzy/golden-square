require 'grammar_improvement'

RSpec.describe "check_grammar method" do
  it "returns true with capital letter and full stop" do
    uppercase_start = check_grammar("Good morning.")
    expect(uppercase_start).to eq true
  end
  it "returns false without a capital letter" do
    uppercase_start = check_grammar("good morning.")
    expect(uppercase_start).to eq false
  end
  it "returns false without a full stop" do
    uppercase_start = check_grammar("Good morning")
    expect(uppercase_start).to eq false
  end
  it "returns false with neither full stop nor capital" do
    uppercase_start = check_grammar("good morning")
    expect(uppercase_start).to eq false
  end
  it "returns true with capital letter and exclamation point" do
    uppercase_start = check_grammar("Good morning!")
    expect(uppercase_start).to eq true
  end
end