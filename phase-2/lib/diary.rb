class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries.push(entry)
  end

  def all
    return @entries
  end

  def count_words
    word_count = 0
    @entries.each do |entry|
    word_count += entry.count_words
    end
    return word_count
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    estimated_time = 0
    @entries.each do |entry|
      estimated_time += entry.reading_time(wpm)
    end
    return estimated_time
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
    sorted_by_longest = readable_entries.sort_by do |entry|
      entry.count_words
    end
    sorted_by_longest.last
  end
end

class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @current_text = contents
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").count
  end

  def reading_time(wpm)
    words = @contents.split(" ")
    (words.length / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    if @current_text.empty?
      @current_text = @contents
    end
    return_words = []
    text = @current_text.split(" ")
    how_many_words = wpm * minutes
    for num in [0..(how_many_words-1)] do
      return_words << text[num]
      text.slice!(num)
    end
    @current_text = text.join(" ")
   return return_words[0..(how_many_words-1)].join(" ")
  end
end
