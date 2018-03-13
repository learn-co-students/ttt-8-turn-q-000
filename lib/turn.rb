def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, token="X")
  board[position-1]=token
end

def position_taken?(board, position)
  if(board[position]==" ")
    return false
    else
    return true
  end
end

def valid_move?(board, position)
  int_p= position.to_i
  int_p=int_p -1
  if(position_taken?(board,int_p)|| int_p >8 ||int_p<0)
    return false
    else
    return true
  end
end

def turn(board)
  puts"Please enter 1-9:"
  input= gets
  while(!valid_move?(board,input))
    puts" invalid input"
    input= gets
  end
  move(board,input.to_i)
  display_board(board)
end