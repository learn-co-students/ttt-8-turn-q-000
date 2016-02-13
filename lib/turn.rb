def turn(board)
  puts "Please enter 1-9:"
  player_move = gets.strip

  if !valid_move?(board, player_move)
    puts "Please enter 1-9:"
    player_move = gets.strip
  else
    move(board, player_move, "X")
    display_board(board)
  end
end

def move(board, position, mark = "X")
  board[position.to_i - 1] = mark
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, position)
  index = position.to_i - 1

  if index.between?(0, 8) && !position_taken?(board, index)
    true
  else
    false
  end
end