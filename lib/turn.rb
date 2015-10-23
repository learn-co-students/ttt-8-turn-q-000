def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "---------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n\n"
end


def valid_move?(board, position)
  raw_position = position.to_i - 1
  if raw_position.between?(0, 8) && !position_taken?(board, raw_position)
    true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, position, player="X")
  raw_position = position.to_i - 1
  board[raw_position] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    puts "Sorry. Invalid move. Please, try again."
    turn(board)
  end
  display_board(board)
end