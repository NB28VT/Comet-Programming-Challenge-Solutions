def max_number(numbers)
  if numbers == nil
    nil
  else
    numbers.sort[-1]
  end
end
