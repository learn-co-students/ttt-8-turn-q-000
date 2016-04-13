def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board,position)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  position = position.to_i # position comes from a user input. So it is a string. We need to convert it to an int
  position.between?(1,9) && !position_taken?(board,position)
end

def position_taken?(board,position)
  position -= 1 # We let the user type a number between 1 and 9. But the board has in reality position from 0 to 8
  !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def move(board,position,value="X")
  board[position.to_i - 1] = value
end