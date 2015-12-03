
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  until valid_move?(board, position)
    puts "Please choose a Correct Position - a Number Between 1-9!"
    position = gets.strip
  end
  move(board, position, char ="X")
  display_board(board)
end

def move(board, position, char = "X")
 board[position.to_i - 1] = char
end

def position_taken?(board,position)
  !(board[position] == " ") ? true : false
end

def valid_move?(board, position)
  position = position.to_i
  position.between?(1,9)  and position_taken?(board,position-1) == false ? true : false
end