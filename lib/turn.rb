def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "--------------------------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "--------------------------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  return false if position =~ /(\D|\s)/
  position = position.to_i - 1
  if (board[position] == " " || board[position] == "" || board[position] == nil)
    return true
  else
    return false
  end
end

def move(board,position,xoro="X")
  board[position.to_i - 1] = xoro
end

def turn(board)
  puts "Please enter 1-9:"
  choice = gets.chomp
  valid = valid_move?(board,choice)
  if valid == false
    puts "Invalid input.  Please try that again!"
    choice = gets.chomp
  else
    move(board,choice)
    display_board(board)
  end
end




