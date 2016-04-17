def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, position)
  move = position.to_i - 1
  if move.between?(0,8) && !position_taken?(board, move)
    true
  else   
    false
end
end

def move(board, location, character = "X")
position = location.to_i - 1
update_array(board, position, character)
end


def turn(board)
puts "Please enter 1-9:"
position = gets.to_i - 1
if !valid_move?(board, position)
  loop do
    puts "Please enter 1-9:"
    position = gets.to_i - 1
 until position.between?(0,8)
      end
    end
end
end
 

def position_taken? (board, position)
if board[position] == " " || board[position] == "" || board[position] == nil
  return false
elsif board[position] == "X" || board[position] == "O"
  return true
end
end

def update_array(array, position, value)
  array[position] = value
end
