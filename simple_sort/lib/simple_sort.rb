
def sort_list(list)
  sorted = []
  arrayed = list.split
  float_array = arrayed.map(&:to_f)
  y = float_array.count

  y.times do
    lowest = float_array.min
    sorted << lowest
    float_array.delete(lowest)
  end

  sorted.join(' ')
end
