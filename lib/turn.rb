def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if valid_move?(board, input) == true
    move(board, input)
  else
    until valid_move?(board, input) == true
      turn(board)
      break
    end
  end
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i < 1 || position.to_i > 9  
    false
  elsif position_taken?(board, position) == true
    false
  else
    board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    true
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " "
    false
  elsif board[position.to_i - 1] == ""
    false
  elsif board[position.to_i - 1] == nil
    false
  elsif board[position.to_i - 1] == "X"
    true
  elsif board[position.to_i - 1] == "O"
    true
  end
end

def move(board, position, character = "X")
  board[position.to_i - 1] = character
  display_board(board)
end