def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = "X")# code your move method here!
  board[position.to_i - 1] = char  # board[] has the character X
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, position)# code your #valid_move? method here
  if (position.to_i.between?(1, 9) == true) && (position_taken?(board, position.to_i - 1) == true)
    nil or false
  elsif position.to_i.between?(1, 9) == false
    nil or false
  elsif (position.to_i.between?(1, 9) == true) && (position_taken?(board, position.to_i - 1) == false)
    true
  end
end

def position_taken?(board, position)
  if board[position.to_i] == "" || board[position.to_i] == " "
    false
  elsif board[position.to_i] == nil
    false
  elsif board[position.to_i] == "X" || board[position.to_i] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, char = "X")
    display_board(board)
  elsif valid_move?(board, position) == false
    turn(board)
  end
end
