#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move? method
def valid_move?(board, position)
position = position.to_i - 1
if position.between?(0, 8) == true && position_taken?(board, position) == false
  true
else
  false
end
end

#position_taken? method
def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  else
    true
  end
end

#move method
def move(board, position, char = "X")
  position = position.to_i
  board[position - 1] = char
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == false
   puts "Sorry, that's not a valid move."
   turn(board)
  else
   move(board, position)
   display_board(board)
  end


end