require 'counter'

RSpec.describe Counter do
  it "initially reports a count of zero" do
    counter = Counter.new
    expect(counter.report). to eq "Counted to 0 so far."
  end

  it "reports a count of added values with one addition" do
    counter = Counter.new
    counter.add(3)
    expect(counter.report). to eq "Counted to 3 so far."
  end
end