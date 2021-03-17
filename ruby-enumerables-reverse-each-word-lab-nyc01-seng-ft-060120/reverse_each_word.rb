def reverse_each_word(sentence)
    words = []
    words = sentence.split
    reverse_the_word = words.collect { |i| i.reverse }
    reverse_the_word.join(" ")
  end
  