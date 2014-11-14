def word_frequency(file)
  frequency = Hash.new(0)

  File.read(file).scan(/\w+/).each do |word|
    word.downcase!
    frequency[word] += 1
  end
  frequency = Hash[frequency.sort_by { |_, count| count }.reverse]
end
