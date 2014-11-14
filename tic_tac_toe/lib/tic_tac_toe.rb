
def winner?(board)
  dimension = board.flatten.length
  win_number = Math.sqrt(dimension)
  x_win_array =  Array.new(win_number, 'x')
  o_win_array = Array.new(win_number, 'o')
  diagonal_right = []
  diagonal_left = []

  x = 0
  y = 0
  while x < (win_number)
    diagonal_right << board[x][y]
    x += 1
    y += 1
  end

  x = 0
  y = (win_number - 1)
  while y >= 0
    diagonal_left << board[x][y]
    x += 1
    y -= 1
  end

  if board.include?(x_win_array) || board.include?(o_win_array)
    true
  elsif board.transpose.include? (x_win_array)
    true
  elsif board.transpose.include? (o_win_array)
    true
  elsif diagonal_right == (o_win_array) || diagonal_right == (x_win_array)
    true
  elsif diagonal_left == (o_win_array) || diagonal_left == (x_win_array)
    true
  else
    false
  end
end
