require 'tracks'

RSpec.describe MusicHistory do
  context 'given an artist and track' do
    it 'adds the information to the track list' do
      track_list = MusicHistory.new
      track_list.add_track("Biffy Clyro", "Space")
      expect(track_list.print_tracklist).to eq "Biffy Clyro - Space"
    end
  end
  
  context 'given a second artist and track' do
    it 'adds the second track information to the track list' do
      track_list = MusicHistory.new
      track_list.add_track("Biffy Clyro", "Space")
      track_list.add_track("Rage Against the Machine", "Killing in the Name Of")
      expect(track_list.print_tracklist).to eq "Biffy Clyro - Space, Rage Against the Machine - Killing in the Name Of"
    end
  end
end