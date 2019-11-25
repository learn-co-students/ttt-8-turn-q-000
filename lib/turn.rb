def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, idx)
  if idx.between?(0, 8) && !position_taken?(board, idx)
    return true
  end
end

def position_taken?(board, idx)
  return board[idx] != " "
end

def input_to_index(num)
  return num.to_i - 1
end

def move(board, index, choice = "X")
  board[index] = choice.upcase
  return board
end

def turn(board)
  puts "Please enter 1-9:"
 
  input = gets.strip
  idx = input_to_index(input)
  if valid_move?(board, idx)
    move(board, idx)
    display_board(board)
  else
    turn(board)
  end
end