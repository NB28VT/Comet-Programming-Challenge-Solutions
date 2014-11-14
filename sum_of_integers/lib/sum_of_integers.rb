def sum(sample_file)
  file = File.open(sample_file, 'r')
  numbers = []
  file.each_line { |x| numbers << x.to_i }
  file.close
  numbers.reduce(:+)
end
