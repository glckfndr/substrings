def substrings(word, dictionary)
  words = word.gsub(/[!,?]/, '').downcase.split
  counter = Hash.new(0)
  words.each do |wrd|
    dictionary.each do |x|
      counter[x] += 1 unless wrd[x].nil?
    end
  end
  counter
end
