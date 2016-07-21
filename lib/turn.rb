def turn(board)

  puts "Please enter 1-9:"
  position = input_to_index(gets.chomp)

  until valid_move?(board, position)
    puts "Invalid response, Please enter 1-9:"
    position = input_to_index(gets.chomp)
  end

  move(board, position)
  display_board(board)
end

# Helper methods previously defined
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, idx)
  return (idx < 10 && idx >= 0) && !position_taken?(board, idx)
end

def position_taken? (board, idx)
  return (board[idx] == "X" || board[idx] == "O")
end

def input_to_index (val)
  return val.to_i - 1
end

def move (board, idx, val = "X")
  board[idx] = val
end
