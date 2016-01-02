def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position) && position_taken?(board, position)
    move(board, position, current_player = "X")
    puts "Please enter 1-9 again:"

  else
    puts "Please enter a valid number"
    turn(board)
  end

  display_board(board)

end
####
def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end
####

def valid_move?(board, position)
  position_taken?(board, position.to_i) #&& position.between?(1, 9)

  position = position.to_i
  #position.between?(1, 9)

end


####
def position_taken?(board, position)
  #return true if board[position.to_i-1] == " " or board[position.to_i-1] == "" or board[position.to_i-1] == nil
  board[position.to_i-1] != "X" && board[position.to_i-1] != "O"
end


####
def move(board, position, current_player = "X")
  board[position.to_i-1] = current_player


end