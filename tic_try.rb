
def winner?(board)
  win = false
  i = board.length-1
  # horizontal




# horiztonal WORKS
   (0..i).each { |n| win = true if (board[n].join == 'ooo') }
   (0..i).each { |n| win = true if (board[n].join == 'xxx') }
# vertical


  if board.each{ |row| row[0] == '0' }
    puts "passing"
  end
end




  # puts win



end

winner?([['o', 'x', ' '],
         ['o', 'x', ' '],
         ['o', 'x', ' ']])
