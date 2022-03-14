require 'track'
require 'music_library'

RSpec.describe 'MusicLibrary Integration' do
  it 'adds a track to the library and returns a list of tracks' do
    music_library = MusicLibrary.new
    track_1 = Track.new("Space", "Biffy Clyro")
    music_library.add(track_1)
    expect(music_library.all).to eq [track_1]
  end

  it 'returns a list of tracks that match the keyword' do
    music_library = MusicLibrary.new
    track_1 = Track.new("Space", "Biffy Clyro")
    music_library.add(track_1)
    expect(music_library.search("Space")).to eq [track_1]
  end

  it 'returns a list of tracks that match the keyword' do
    music_library = MusicLibrary.new
    track_1 = Track.new("Space", "Biffy Clyro")
    track_2 = Track.new("Space", "David Bowie")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("Space")).to eq [track_1, track_2]
  end
end