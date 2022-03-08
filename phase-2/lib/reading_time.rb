def words_per_minute(text)
  sentence = text.split(" ")
  return (sentence.length / 200.to_f).ceil
end

