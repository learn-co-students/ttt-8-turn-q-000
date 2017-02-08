def display_board(board) # this method prints the board to player
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos) # IS IT EVEN POSSIBLE TO MOVE THERE?!
  pos = pos.to_i
  if (pos.between?(1,9) && position_taken?(board,pos) == false)
    true
  else
    false
  end
end

def position_taken?(board, pos) # is somebody already there?
  pos = pos - 1
  if board[pos] == "X" || board[pos] == "O"
    true
  elsif board[pos] == "" || board[pos] == " "
    false
  else
    false
  end
end

def move(board, pos, char = "X") # move character
  board[pos.to_i - 1 ] = char
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  if valid_move?(board, pos)
    else
      puts "can't move there!"
      turn(board)
  end
  move(board, pos, "X")
  display_board(board)
end