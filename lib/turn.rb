
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character = "X")
  board[index] = character
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if (board[index] == " " || board[index] == "") 
      return true
    end
    return false
  end
  return false
end

# #turn
# Get input
# Turn it into idex
# if index is valid
# => make the move for input
# else
# => ask for input again until you get a valid input

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index))
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end


