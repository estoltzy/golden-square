class MusicHistory
  def initialize
    @tracklist = []
  end

 def add_track(artist, song)
  new_entry = {"artist" => artist, "title" => song}
  @tracklist.push(new_entry)
  end

  def print_tracklist
    listening_history = ""
    @tracklist.each do |hash|
      listening_history += "#{hash["artist"]} - #{hash["title"]}, "
    end
    return listening_history[0...-2]
  end
end