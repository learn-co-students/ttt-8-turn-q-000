def display_board(board)
  dashes = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts dashes
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts dashes
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,spot)
    if board[spot] == ""
    false
  elsif board[spot] == " "
    false
  elsif board[spot] == nil
    false
  elsif board[spot] == "X"
    true
  elsif board[spot] == "O"
    true
  end
end

def valid_move?(board,spot)
    spot = spot.to_i - 1
  if
    position_taken?(board, spot) == false && spot.between?(0,9) == true
    true
  elsif
    position_taken?(board, spot) == true
    false
  end
end

def move(board,spot,player = "X")
  spot = spot.to_i - 1
  board[spot] = player
end

def turn(board)
  puts "Please enter 1-9:"
  spot = gets.strip
  if valid_move?(board,spot) == true
    move(board, spot,"X")
    display_board(board)
  else turn(board)
  end
end


