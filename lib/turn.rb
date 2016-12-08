#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move method
def valid_move?(board, index)
  if position_taken?(board, index) != true && index.between?(0, 8)
    true
  else
    false
  end
end

#position_taken method
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] ==  "O"
    true
  end
end

#user_input -1 method
def input_to_index(user_input)
  user_input.to_i - 1
end

#move method
def move( board, input_to_index, players_character = "X" )
  board[input_to_index] = players_character
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
