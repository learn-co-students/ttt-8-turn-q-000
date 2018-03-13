def turn(board)
  puts "Please enter 1-9:"

  position = gets.strip
  until valid_move?(board, position)
    puts "Please enter a valid number"
    puts "Please enter 1-9:"
    position = gets.strip
  end

  move(board, position)
  display_board(board)
end

def move(board, position, char="X")
  board[position.to_i - 1] = char
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position.to_i.between?(1, 9) && !position_taken?(board, position.to_i - 1)
end

def position_taken?(board, position)
  char = ["X", "O"]
  char.include?(board[position]) ? true : false
end