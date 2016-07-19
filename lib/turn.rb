def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  index=false
  while index==false
    index=prompt(board)
  end
  puts "after prompt index is #{index}"
  if valid_move?(board,index)==true
    puts "index=#{index}"
    move(board, index, "X")
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif [0,1,2,3,4,5,6,7,8].include? index
    true
  else
    false
  end
end
def position_taken?(board, index)
  if board[index]==" "
    false
  elsif board[index]==""
    false
  elsif board[index]==nil
    false
  else
    true
  end
end
def prompt(board)
  index=false
  puts "What is your move?"
  input=gets.strip
  puts "you chose #{input}"
  index=input_to_index(input)
  if index==-1
    index=false
  end
  return index
end
def input_to_index(input)
  if ["1","2","3","4","5","6","7","8","9"].include? input
    input2=input.to_i
    index=input2-1
    return index
  else
    return -1
  end
  puts "index=#{index}"
end

def move(board, index, mark="X")
  board[index]=mark
end
