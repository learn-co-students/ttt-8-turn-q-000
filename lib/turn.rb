#outputs the Tic Tac Toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#determines if a position in the board array is filled
#position is a string
def position_occupied?(board, position)
  return board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil ?
    false : true
end

#determines if the position in the board array is filled and between 0-8
#position is a string
def valid_move?(board, position)
  #position is not between 0 and 8 = invalid move
  if position.to_i < 1 || position.to_i > 9
    return false
  else
    #position is occupied = invalid move
    return position_occupied?(board, position) ? false : true
  end
end

#assigns token to board array index entered
#position is a string and off by 1
def move(board, position, token='X')
  board[position.to_i-1] = token
end

#player turn
def turn(board)
  #get user input
  puts "Please enter 1-9:"
  input = gets.strip

  #determine whether to make move or not
  #recursively run turn method again if move is invalid
  valid_move?(board, input) ? move(board, input) : turn(board)

  #display the board after a valid move has been entered
  display_board(board)
end



