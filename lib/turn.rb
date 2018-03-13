def position_taken?(board,position)
  !((board[(position.to_i)-1]==" ")||(board[(position.to_i)-1]=="")||(board[(position.to_i)-1]==nil))
end

def valid_move?(board, position)
  (position.to_i).between?(1, 9) && (!(position_taken?(board,position)))
end

def move(board,position,value="X")
  board[position.to_i - 1 ] = value
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  position = gets.strip
  if (valid_move?(board, position)) == true
    move(board,position,value="X")
    display_board(board)
  else
    until (valid_move?(board, position)) == true
    puts "Please enter 1-9:"
    display_board(board)
    position = gets.strip
    end
    move(board,position,value="X")
    display_board(board)
  end
end

def display_board(board)
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
