def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
 position.to_i.between?(1, 9) == true && !position_taken?(board, position)
end

def move(board, position, token =   "X")
  board[position.to_i - 1] = token
end

def position_taken?(board, position)
  !(board[position.to_i-1] == " ")
  #convert .to_i in the array
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board, position, "X")
  else
    puts "Invalid move!!!"
    turn(board)
  end
  display_board(board)
end
