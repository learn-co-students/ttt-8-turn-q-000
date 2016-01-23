board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#display_board prints out the current state of the board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move? 
#remember -1 

def position_taken?(board, position)
  if (board[(position.to_i-1)] == "O" || board[(position.to_i-1)] == "X") 
    true
  else false 
  end
end

# code your #valid_move? method here
def valid_move?(board, position)
  if ((position.to_i).between?(1,9) == true && (position_taken?(board,(position.to_i)) == false)) 
    true
  else false
  end
end 

#turn sets the correct index value of that position within the board equal to the token 
# remember to minus 1

def move(board, position, value = "X")
  board[(position.to_i-1)] = value 
end


def turn(board, position = "0", token = "X")
  puts "Please enter 1-9:"
  position = gets.strip
  while (valid_move?(board, position) == false) 
      puts "Please enter 1-9:"
      position = gets.strip
  end
    move(board, position)
    display_board(board)
end