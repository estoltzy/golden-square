require 'count_words'

RSpec.describe 'string count' do
  it 'counts the number of words in a string' do
    result = count_words('one')
    expect(result).to eq 1
  end
end
