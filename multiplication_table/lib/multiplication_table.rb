def multiplication_table(size = 12)
  count = 1

  while count <= size

    row = (1..size).to_a

    row.each do |number|
      number = (number * count)
      number.to_s
      print number
      if number == (count * size)
        print "\n"
      else
        print "\t"
      end
    end
    count += 1
  end
end
