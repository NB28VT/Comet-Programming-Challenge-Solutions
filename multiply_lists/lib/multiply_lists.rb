def multiply_lists(lists)
  seperated = lists.split('|')
  first_half = seperated[0].split(' ').map(&:to_i)
  second_half = seperated[1].split(' ').map(&:to_i)
  new_array = []

  if first_half.length == second_half.length
    first_half.each_with_index do |element, index|
      new_array << (element * second_half[index])
    end
    new_array.map(&:to_i).join(' ')
  else
    "Lists must be same length"
  end
end
