def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position.to_i.between?(1, 9) && !(position_taken?(board, position.to_i-1))
end


def position_taken?(board, position)
  board[position] != " "
end

def move(board, position, token="X")
  board[position.to_i-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp

  until valid_move?(board, input)
    turn(board)

  end

  move(board, input, "X")
  display_board(board)
end