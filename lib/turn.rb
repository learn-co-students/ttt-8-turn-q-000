# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = 'X')
  board[position.to_i - 1] = char
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position]==nil
    false
  else
    true
  end
end

def valid_move?(board, position)
  index = position.to_i - 1
  if index.between?(0,8) && !position_taken?(board,index)
    true
  end
end

def turn(board)
    puts "Please enter 1-9:"
    position = gets.chomp 
  until valid_move?(board,position) do
    puts "Please enter 1-9:"
    position = gets.chomp
  end
move(board, position)
display_board(board)
end
