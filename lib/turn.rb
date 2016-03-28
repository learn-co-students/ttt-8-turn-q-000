def turn(board)
  puts "Please enter 1-9:"
  if valid_move?(board, input=gets.strip)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

def move(array, position, value="X")
  array[(position.to_i-1)]=value
end

def display_board(board)
  puts(" #{board[0]} "+ "|" +" #{board[1]} "+ "|" +" #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} "+ "|" +" #{board[4]} "+ "|" +" #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} "+ "|" +" #{board[7]} "+ "|" +" #{board[8]} ")
end

def position_taken?(board, position)
  if (board[position.to_i]==" " || board[position.to_i]=="" || board[position.to_i]==nil)
    false
  elsif (board[position.to_i]=="X" || board[position.to_i]=="O")
    true
  end
end

def valid_move?(board, position)
  if position_taken?(board, position.to_i - 1) || !(position.to_i.between?(1, 9))
    false
  else
    true
  end
end
