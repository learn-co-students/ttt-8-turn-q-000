def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position=0)
  return true if !(position_taken?(board, position.to_i - 1)) && position.to_i.between?(1,9)
  return false
end

def position_taken?(board,position)
  return true if board[position]=="X" || board[position]=="O"
  return false
end

def move(board_array, location, character="X")
  board_array[location.to_i-1] = character
  board_array
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
      move(board, input, "X")
      else
      turn(board)
    end
  display_board(board)
end