def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board,index)
    if (position_taken?(board,index) == true && index.between?(0,8))
    true
  else
    false
  end
end
def position_taken?(board,index)
    if board[index] == " "
      true
    else
      false
    end
end
def  move(array,index,value="X")
   array[index] = value
end
def input_to_index(number)
  arrayindex = number.to_i
  arrayindex = arrayindex -1
  return arrayindex
end
def turn(board)
  puts "Please enter 1-9:"
  num=gets.strip()
  index=input_to_index(num)
  if valid_move?(board,index)==true
  move(board,index)
  display_board(board)
  else
  turn(board)
end
end
