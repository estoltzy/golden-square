require 'diary'

RSpec.describe "Diary Integration" do
  it 'lists diary entries in the diary' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday Morning", "Feeling tired")
    diary_entry2 = DiaryEntry.new("Tuesday Morning", "Went for a run")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.all).to eq [diary_entry1, diary_entry2]
  end

  it 'counts the number of words in all diary entries' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday Morning", "Feeling tired")
    diary_entry2 = DiaryEntry.new("Tuesday Morning", "Went for a run")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.count_words).to eq 6
  end

  it 'estimates the reading time for all diary entries' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday Morning", "Feeling tired")
    diary_entry2 = DiaryEntry.new("Tuesday Morning", "Went for a run")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.reading_time(2)).to eq 3
  end

  describe 'best reading time entry behaviour' do
    context 'where we just have one entry and it is readable in the time' do
      it 'returns that entry' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Monday Morning", "Feeling tired")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry1
      end
    end

    context 'where we just have one entry and it is unreadable in the time' do
      it 'returns nil' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Monday Morning", "Feeling tired now")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context 'where we have multiple entries' do
      it 'returns the longest entry the user could read in this time' do
        diary = Diary.new
        best_entry = DiaryEntry.new("my title", "one two")
        diary.add(DiaryEntry.new("my title", "one"))
        diary.add(best_entry)
        diary.add(DiaryEntry.new("my title", "one two three"))
        diary.add(DiaryEntry.new("my title", "one two three four"))
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end
end
