# Define display_board that accepts a board and prints
# out the current state.
def turn(board)
  puts "Please enter 1-9:"
  loc = gets.chomp
  if valid_move?(board, loc) == false
    puts "Invaild input"
    turn(board)
  end
  move(board, loc, choice = 'X')
  display_board(board)
  
  
end
 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  pos = pos.to_i
  pos = pos - 1
    
  if position_taken?(board, pos) == false and pos.between?(0, 9)
      true
  else
    false
  end     
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  #true if position taken, false if open
  pos = pos.to_i
  if board[pos] == " " or board[pos] == "" or board[pos] == nil
    false
  else
    true
  end
end 

def move(board, loc, choice = 'X')
  loc = loc.to_i
  loc -= 1
  board[loc] = choice
end