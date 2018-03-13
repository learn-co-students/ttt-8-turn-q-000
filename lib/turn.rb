
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  move = position.to_i
  index = move-1
  
    if position_taken?(board, index) == false && index.between?(0, 8) 
      true
    else
      false 
    end
end


def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end

end


def move(board, position, input = "X")
   move = position.to_i
  index = move-1
  board[index] = input
end


def turn(board)
  puts "Please enter 1-9:"

  position = gets.strip
  integer = position.to_i
  index = integer-1

  if valid_move?(board, position) == true
    move(board, position, input = "X")
    display_board(board)

  else 
    puts "Invalid selection. Either your selection is unavailable, or your selection is invalid. Please choose again. Make sure you choose a number between 1-9"
turn(board)    

end
end









