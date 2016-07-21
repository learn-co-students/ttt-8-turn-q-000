def turn
  puts "Please enter 1-9."
  number = gets.strip


  if number.between?(1,9)
    display_board(board)
    input_to_index(number)
    move(array,index, value = 'X')
    valid_move?(board,index)
  end

end




def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  number = number.to_i
  index = number - 1
  return index
end

def move (array, index,value = "X")
  array[index] = value
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,8)
  position_taken?(board,index)
  else
    false
  end


end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    true
  elsif board[index] == ""
    true
  elsif board[index] == nil
    true
  elsif board[index] == "X"
    false
  elsif board[index] == "O"
    false

  end
end
