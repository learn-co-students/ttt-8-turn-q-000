board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
index = 0

def display_board(board) 
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
 if board[index] == "X" || board[index] == "O"
  return false
elsif board[index] == position_taken?(board, index)
  return false
elsif index > "8".to_i
  return false
elsif index < "0".to_i
  return false
else
  return true
  end
end

def position_taken?(board, index)
  if board[0] == "" || board[0] == " " || board[0] == "nil" || board[index] == "X" || "O"
    return true
  else
    return false
  end
end
board = [" ", " ", " "]

def move(board, position, char = "X")
  board[position] = char
  end

move(board, 0, "O")
move(board, 8, "X")

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if (!valid_move?(board, index))
    number = gets.strip
  else
    puts "display_board(board)"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   | X |   "
    move(board, 0, "X")
  end
end

