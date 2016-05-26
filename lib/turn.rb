def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end

  move(board, index)
  display_board(board)

end

def input_to_index(input)
  index = input.to_i
  index = index - 1
end

def move(board, index, symbol = "X")
  board[index] = symbol
end

def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index >= 0 && index <=8
    true
  else
    false
  end
end

def position_taken?(board, index)
  if (index >= 0 && index <=8) && (board[index] == "X" || board[index] == "O")
    true
  else
    false
  end
end
