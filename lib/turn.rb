def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)

  answer = false
  if position.to_i.between?(1, 9) && position_taken?(board, position) == false
    answer = true
  else
   answer = false
  end
  answer
end

def position_taken?(board, position)
  (board[position.to_i-1] == " " || board[position.to_i-1] == "") ? false : true
end

def move(board, position, value = "X")
  board[position.to_i-1] = value
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip 
  if valid_move?(board,input)
    move(board, input, value = "X")
  else
    turn(board)
  end
  display_board(board)
end
