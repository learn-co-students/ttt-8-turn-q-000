def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  position=position.to_i-1
  if !position_taken?(board,position) && position >=0 && position <=8
    true
  end
end

def position_taken?(board,position)
  if !(board[position]==" " || board[position]=="" || board[position] ==nil)
    true
  end
end

def move(array, position, value="X")
  array[position.to_i-1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end