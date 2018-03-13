

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " -----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " -----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your #valid_move? method here

def valid_move?(board, position)
  position = position.to_i
  if (position.between?(1,9) && position_taken?(board, position) == false)
    true 
  else
    false
  end  
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)
  position = position - 1
  if board[position] == "X" || board[position] == "O" 
    true
  elsif board[position] == " "
    false    
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  end
end

def move(board, position, value = "X")
  position = position.to_i - 1
  board[position] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, value = "X")
    display_board(board)
  else
    puts "invalid"
    turn(board)
  end  
end

