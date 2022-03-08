def check_grammar(text)
  first_character_is_uppercase = text[0] == text[0].upcase
  last_character_is_correct = [".", "!"].include? text[-1] 
  if first_character_is_uppercase && last_character_is_correct
    return true
  else
    return false
  end
end