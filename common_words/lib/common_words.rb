

def most_common(input)
  scrubbed = input.downcase.gsub(/[^a-z\s]/, '').split
  count_hash = {}

  scrubbed.each do |x|
    occurences = scrubbed.count(x)
    count_hash[x] = occurences
  end

  max_value = count_hash.values.max
  count_hash.select { |_, v| v == max_value }.keys
end
