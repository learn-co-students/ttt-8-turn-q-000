def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken? (board,index)
  if board[index] == "X" or board[index]=="O"
    true
  else
    false
  end
end
def valid_move? (board,index)
  if index < 0 or index > 8
    false
  elsif position_taken?(board,index)==true
    false
  else
    true
  end
end

def input_to_index (input)
  input=input.to_i - 1
end
def move(array,index,value="X")
  array[index] = value
end

def turn (board)
  puts "Please enter 1-9:"
  input=gets.strip
  input=input_to_index(input)
  until valid_move?(board,input)==true
      puts "Please enter 1-9:"
      input=gets.strip
      input=input_to_index (input)
  end
  move(board,input,value="X")
  display_board(board)
  #display new board
end
