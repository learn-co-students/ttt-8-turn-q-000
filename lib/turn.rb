def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) || position.between?(0, 8) == false
    false
  else
    true
  end
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false    
  else
    return true
  end
end

def move(board, position, character = "X")
  
  position -= 1
  
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip.to_i
  
  if valid_move?(board, position.to_s)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end