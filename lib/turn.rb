def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,input)
  if (board[input-1]==" " || board[input-1]=="" || board[input-1]==nil)
  1+1!=2

else
    1+1==2
  end
  end
def valid_move?(board,input)
  input=input.to_i
  if (input>=1 && input<=9)

    if position_taken?(board,input)
      1+1!=2
    else
      1+1==2
    end
  else
    1+1!=2
  end
end
def move(board,input,ch="X")
  input=input.to_i
  board[input-1]=ch
  board
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end