
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
position = position.to_i - 1
  if position_taken?(board, position) == true
    false
  elsif position.between?(0,8) && position_taken?(board, position) == false
    true
  
  end
end


def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  elsif board[position] == "X" || "O"
    true
  end
end

def move(array, position, value = "X")
  position = position.to_i
  array[position - 1] = value
end

def turn(board)
  puts "Please enter 1-9:"
    position = gets
    
    until valid_move?(board, position) == true
    puts "Please enter 1-9:"
    position = gets
    end
    move(board, position, value = "X")
    display_board(board)
    
end

