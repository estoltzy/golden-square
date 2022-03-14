# File: lib/music_library.rb

class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) # track is an instance of Track
    @library << track
  end

  def all
    return @library
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
      return @library.select do |track|
      track.matches?(keyword)
      end
  end
end