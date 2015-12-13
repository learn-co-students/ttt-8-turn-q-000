#display_board
#valid_move?
#position_taken?
#between_1_9?
#move



#display_board
def display_board(board)
  # puts "\n"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
  # puts "\n"
end


#position_taken?
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end  
end

def valid_move?(board, position)
  position = position.to_i - 1
  if !position_taken?(board, position) && position.between?(0, 8) 
      true
  else
    false
  end
end

#move
def move(board, position, value = "X")
  board[position.to_i - 1] = value
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position) == false
    turn(board)
  else
    # valid_move?(board, position) == true
    move(board, position, value="X")
    # display_board(board)
  end
 display_board(board)
end
#display_board(board) 








