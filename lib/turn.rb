def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end



#method to display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#method to see if move is empty and valid position on board
def valid_move?(board, position)
  position.to_i.between?(1,9) and not position_taken?(board, position.to_i - 1)
end

#method if the position is available
def position_taken?(board,position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  else
    board[position] == "X"  || board[position] == "O"
    true
  end
end

def move(board, position, token="X")
  board[position.to_i - 1] = token
end








