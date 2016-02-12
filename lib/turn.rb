#code for turn method
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, "X")
  else
    turn(board)
  end
  display_board(board)
end


# code for displaying the board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def move(board, postion, value = "X" )

  #postion = postion - 1
  board[postion.to_i - 1] = value
end


# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0,8) #position > 0 && position <= 9
    if position_taken?(board, position)
      return false
    else
      return true
    end
  else
    return false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  if board[position] == " " || board[position] == ""
    return false
  elsif board[position]  == "X" || board[position] == "O"
    return true
  else
    return false
  end
end