require 'track'

RSpec.describe Track do
  it 'returns true if keyword matches title or artist' do
    track = Track.new("Space", "Biffy Clyro")
    expect(track.matches?("Space")).to eq true
  end
end