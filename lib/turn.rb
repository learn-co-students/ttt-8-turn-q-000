def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input)
  else
    until valid_move?(board, input) == true
      puts "Move not valid. Please enter 1-9:"
      input = gets.strip   
    end
  end
  display_board(board)
end

def move(array, input, character="X")
  position = "#{input}".to_i - 1
  array[position] = character
end

def valid_move?(array, input)
  position = "#{input}".to_i - 1
  if position.between?(0, 8) == true && position_taken?(array, position) == false
    true
  else
    false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(array, position)
  if array[position] == "" || array[position] == " "
    false
  elsif array[position] == "X" || array[position] == "O"
    true
  else
    false
  end
end