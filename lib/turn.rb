# Define display_board that accepts a board and prints
# out the current state.
def display_board(board= [" ", " ", " ", " ", " ", " ", " ", " ", " "])

puts   "   |   |   "
puts   "-----------"
puts   "   |   |   "
puts   "-----------"
puts   "   |   |   "


 def display_board (board= [" ", " ", " ", " ", " X ", " ", " ", " ", " "])

puts   "   |   |   "
puts   "-----------"
puts   "   | X |   "
puts   "-----------"
puts   "   |   |   "

def display_board (board= [" 0 ", " ", " ", " ", "  ", " ", " ", " ", " "])

puts   " O |   |   "
puts   "-----------"
puts   "   |   |   "
puts   "-----------"
puts   "   |   |   "

def display_board (board= ["O", " ", " ", " ", " X ", " ", " ", " ", " "])

puts   " O |   |   "
puts   "-----------"
puts   "   | X |   "
puts   "-----------"
puts   "   |   |   "

def display_board (board= ["X", "X", "X", " ", "  ", " ", " ", " ", " "])

puts   " X | X | X "
puts   "-----------"
puts   "   |   |   "
puts   "-----------"
puts   "   |   |   "

def display_board (board= [" ", " ", " ", " ", "  ", " ", "O", "O", "O"])

puts   "   |   |   "
puts   "-----------"
puts   "   |   |   "
puts   "-----------"
puts   " O | O | O "

def display_board (board= ["X", " ", " ", " ", "X", " ", " ", " ", "X"])

puts   " X |   |   "
puts   "-----------"
puts   "   | X |   "
puts   "-----------"
puts   "   |   | X "

def display_board (board= ["O", " ", " ", " ", " O ", " ", " ", " ", "0"])

puts   "   |   | O "
puts   "-----------"
puts   "   | O |   "
puts   "-----------"
puts   " O |   |   "

def display_board (board= ["X", "X", "X", "X", "O", "O", "O", "X", "O"])

puts   " X | X | X "
puts   "-----------"
puts   " X | O | O "
puts   "-----------"
puts   " X | O | O "

def display_board (board= ["X", "O", "X", "X", "O", "O", "X", "O", "O"])

puts   " X | O | X "
puts   "-----------"
puts   " O | X | X "
puts   "-----------"
puts   " O | X | O "

def display_board (board= ["X", "X", "X", "O", "X", "X", "O", "X", "O"])

puts   " X | X | X "
puts   "-----------"
puts   " O | X | X "
puts   "-----------"
puts   " O | X | O "

end
end
end
end
end
end
end
end
end
end
end

def valid_move?(board,index)
  if index.to_i.between?(0,8) && " "== board[index.to_i]
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(a = ["1,2,3,4,5,6,7,8,9"])
  '5'.to_i
  '-1'.to_i
  "#{a}".to_i - 1
end
def move(array,index, player = "X")
  5 + 1
  array[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
if valid_move?(board, input_to_index(index))
  move(board, 4)
  display_board(board)
else
  turn(board)
end
end
