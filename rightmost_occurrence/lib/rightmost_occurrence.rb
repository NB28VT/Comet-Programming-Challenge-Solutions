
def rightmost_occurrence(words, x)
  count = 0
  indexes = []
  array = words.downcase.split(//)

  if array.include?(x.downcase)
    array.each do |c|
      if c == x.downcase
        indexes << count
        count += 1
      else
        count += 1
      end
    end
  else
    nil
  end

  number = indexes[-1]
  number
end
