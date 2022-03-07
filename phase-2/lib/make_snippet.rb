def make_snippet(word)
  sentence = word.split(" ")
  if sentence.length <= 5
    return word
  else 
    return (sentence[0,5].join (" ")) + "..."
  end
end
