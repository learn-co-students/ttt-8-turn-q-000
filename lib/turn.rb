def valid_move?(board, position)
  index = position.to_i - 1

  return false if position =~ /\D/ ||
                  index > board.length ||
                  position_taken?(board, position) == true
  true
end

def position_taken?(board, position)
  index = position.to_i - 1
  return false unless board[index] =~ /[XO]/
  true
end

def display_board(board = Array.new(9, " "))
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player = 'X')
  index = position.to_i - 1
  board[index] = player
end

def turn(board)
  puts 'Please enter 1-9:'
  player_move = gets.strip
  turn(board) unless valid_move?(board, player_move)
  move(board, player_move, 'X')
  display_board(board)
end