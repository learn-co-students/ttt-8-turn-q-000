def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "---------------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "---------------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board, position)
  position = position.to_i

  return nil if position == 0 || position > board.length

  puts position.class, position

  position -= 1

  ["", " ", nil].include?(board[position]) ? true : false
end

def move(board, position, player)
  board[position-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board, position.to_i, "X")
  else
    turn(board)
  end

  display_board(board)
end