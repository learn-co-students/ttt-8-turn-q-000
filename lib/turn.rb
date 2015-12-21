def valid_move?(board, pos)
  if pos == pos.to_i.to_s
    board[pos.to_i-1]==" "
  else
    false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, num, mark="X")
  num = num.to_i
  board[num-1]=mark
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  if valid_move?(board,pos)
    move(board,pos)
  else
    turn(board)
  end
  display_board(board)
end