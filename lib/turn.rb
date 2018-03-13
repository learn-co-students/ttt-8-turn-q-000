def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end


def turn(board)
  puts "Please enter 1-9:"

  input=gets.strip
  new_move=input.to_i-1
  if valid_move?(board,input)
    move(board,input)
  else
    puts "Invalid Move! Try again."
    turn(board)
  end
display_board(board)
  end

def valid_move?(board,space)
  if (space.to_i).between?(1,9) && position_taken?(board,space)
    true
  else
    false
  end
end


def position_taken?(board,position)
   move=board[position.to_i-1]
   if move== " " || move == "" || move == nil
    true
  else
    false
  end
end

def move(array,position,player="X")
  array[position.to_i - 1]=player   
end