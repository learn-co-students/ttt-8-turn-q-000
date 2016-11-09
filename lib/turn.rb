def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)

  if valid_move?(index)
    move(board, index)
  else
    turn(board)
  end
end

# Display formatted board to the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Returns true if there's an X or an O
def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  elsif board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  end
end

# Convert input to index (remove one)
# Check if index is on board & not occupied
def valid_move?(board, position)
  if !position.between?(0, 8)
    puts "Invalid move."
    return false
  elsif position_taken?(board, position)
    return false
  else
    return true
  end
end

def input_to_index(input)
  index = input.to_i
  if index.is_a? Integer
    return index - 1
  else
    return -1
  end
end

def move(board, index, token)
  board[index] = token
end
