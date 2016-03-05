def move(board, location, player = "X")
  player = player.upcase

  if(valid_move?(board, location))
     board[location.to_i-1] = player
  end
  display_board(board)
  #turn(board, player)
end


def turn(board, currentPlayer = "X")
  puts "Please enter 1-9:"


###### Loop ####
  until is_valid_input?(input = gets.strip) && valid_move?(board, input)
    turn(board, currentPlayer)
  end
###### Loop ####

  if currentPlayer == "X"
   currentPlayer = "O"
  else
   currentPlayer = "X"
  end

  #puts "Input: " + input + "  => Player: " + currentPlayer
  move(board, input, currentPlayer)
  turn(board, currentPlayer)
end


###################################################################################
###  Helpers
###################################################################################
def position_taken?(board, position)
  position = position.to_i - 1
  val = board[position]
  return (val != nil && val.strip != "")
end
def valid_move?(board, position)
  return position.to_s.match(/^[1-9]$/) && !position_taken?(board, position)
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def is_valid_input?(input)
  !!input.match(/^[1-9]$/)
end