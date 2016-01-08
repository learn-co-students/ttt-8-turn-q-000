board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position) == false && position.between?(1,9)
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == "" || board[position] == nil
    return false
  elsif board[position] == " "
    return false
  else board[position] == "X" || board[position] == "O"
    return true
  end
end

def move(board, position, value = "X")
  position = position.to_i - 1
  board[position] = value
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    position = input
  if valid_move?(board, position) == true
    move(board, position, value = "X")
    display_board(board)
  else valid_move?(board, position) == false
    puts "Please try a valid input!"
    display_board(board)
    turn(board)
  end
end