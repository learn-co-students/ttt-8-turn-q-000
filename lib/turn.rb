def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  position = input.to_i - 1

  if !position_taken?(board, position) && position.between?(0,9)
    true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  else
    true
  end
end

def move(board, position, character = "X")
  board[position.to_i - 1] = character
  board
end

def turn(board)
  puts "Please enter 1-9:"
  player_choice = gets.strip

  if valid_move?(board, player_choice)
    move(board, player_choice, character = "X")
    display_board(board)
  else
    puts "That is not a valid move"
    turn(board)
  end
end