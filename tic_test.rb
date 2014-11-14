def checker?(board)

  # [0..2][0] and [0..2][0] test horizontals
  board.each { |row| puts "#{row[0]} is in the first column"}
  board.each { |row| puts "#{row[1]} is in the second column"}
  board.each { |row| puts "#{row[2]} is in the third column"}
  # horizontal
  puts board[0]





end



checker?([['1','2', '3'],
         ['4', '5', '6'],
         ['7', '8', '9']])
