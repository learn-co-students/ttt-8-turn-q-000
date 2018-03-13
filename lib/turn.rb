def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if (position.to_i - 1).between?(0,8) && !position_taken?(board, (position.to_i - 1))
    true
  else
    false
end
end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
  elsif board[position] != " " || board[position] != ""
    false
  elsif board[position] != nil
    false
    else
      false
end
end

def move(board, position, token = "X")
  board[position.to_i - 1] = token
end
