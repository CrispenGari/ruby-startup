
def char_count(word)
  word = word.downcase
  chars = ('a'..'z').to_a
  frequence = {}
  word.each_char do |a|
    if a in chars
      if frequence.key?(a)
        frequence[a] += 1
      else
        frequence[a] = 1
      end
    end
  end
  return frequence
end


puts char_count 'hello'
