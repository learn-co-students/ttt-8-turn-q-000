

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
input = input.to_i
input -= 1
end

def valid_move?(array, index)
if  index >= 0 && index < 9 && array[index] != "X" || array[index] == "O" && index >= 0 && index < 9
  true
else
  false
end
end

def move (array, index, character = "X")
  array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  else
  #  while input > 9 or or input < 0
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
  #  end

  end


end
