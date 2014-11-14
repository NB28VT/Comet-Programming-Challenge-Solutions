def uniques(list)
  array = list.split(',')
  new_array = []

  array.each do |x|
    if ! new_array.include?(x)
      new_array.push(x)
    end
  end

  new_array.join(',')
end
