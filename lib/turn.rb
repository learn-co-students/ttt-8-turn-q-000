def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    puts "Not a valid move, please choose another spot."
  end
end

def position_taken?(board, index_number)
  if board[index_number] == " " || board[index_number] == "" || board[index_number] == nil
    false
  else board[index_number] == "X" || board[index_number] == "O"
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def position_taken?(board, index_number)
  if board[index_number] == " " || board[index_number] == "" || board[index_number] == nil
    false
  else board[index_number] == "X" || board[index_number] == "O"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else turn(board)
  end
end
