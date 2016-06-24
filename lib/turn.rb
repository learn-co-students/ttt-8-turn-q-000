#display the board
def display_board(state=[" "," "," "," "," "," "," "," "," "])
 print " #{state[0]} | #{state[1]} | #{state[2]} \n-----------\n"
 print " #{state[3]} | #{state[4]} | #{state[5]} \n-----------\n"
 print " #{state[6]} | #{state[7]} | #{state[8]} \n"
end

#valid move
def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      return true
    end
  else
    puts "Input in out of bound."
  end
end

def position_taken?(board, index)
  if board[index]==" " || board[index]=="" || board[index]==nil
    return true
  else
    return false
  end
end

#input to index
def input_to_index(input)
  return input.to_i-1
end

#move
def move(board, index, char="X")
  board[index]=char
end

#Turn
def turn(board)

  puts "Please enter 1-9:"
  a=gets.strip

  a=input_to_index(a)

  if valid_move?(board, a)
    move(board,a)
    display_board(board)


  else


    turn(board)

  end
end
