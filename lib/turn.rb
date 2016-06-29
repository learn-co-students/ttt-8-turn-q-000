board=[" "," "," "," "," "," "," "," "," "]

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input=input.to_i
  index=input-1
end

def move(board, index, value= "X")
  board[index]= value
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else true
  end
end

def valid_move? (board, index)
  (position_taken?(board, index) == false) && (index.between?(0,8))

end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board, index) == true
      move(board, index)
      display_board (board)
  else turn(board)
  end


end
