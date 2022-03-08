require 'reading_time'

RSpec.describe 'words_per_minute method' do
  it 'returns an empty string with the value 0' do
    reading_time = words_per_minute("")
    expect(reading_time).to eq 0
  end
  it 'divides the number of words in a string by 200' do
    reading_time = words_per_minute("one " * 200)
    expect(reading_time).to eq 1
  end
  it 'returns 2' do
    reading_time = words_per_minute("one " * 400)
    expect(reading_time).to eq 2
  end
end