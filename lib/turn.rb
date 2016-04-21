def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  position = position - 1
  if position.between?(0, 8) && position_taken?(board, position) == false
    return true
  else
    return false
  end

end

def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
     return false
   elsif board[position] == "X" || board[position] == "O"
     return true
    else
  end
end

def move(board, input, character = 'X')
  input = input.to_i  #change passed string to integer; method #to_i is called to do this
  input = input - 1
  update_array_at_with(board, input, character)

end

def update_array_at_with(array, position, value)
  array[position] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board,input) == true
    move(board, input, 'X')
    display_board(board)
  else
    display_board(board)
    turn(board)
  end
end