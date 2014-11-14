original_list = (1..100).to_a
original_list.each do |x|
  if (x%3 == 0 && x%5 == 0)
    puts "FizzBuzz\n"
  elsif (x%3 == 0)
    puts "Fizz\n"
  elsif (x%5 == 0)
    puts "Buzz\n"
  else
    puts "#{x}\n"
  end
end
