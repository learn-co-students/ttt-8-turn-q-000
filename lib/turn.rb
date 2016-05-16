def turn(board)
  puts "Please enter 1-9:"
  theMove = gets.strip
  #puts "the move #{theMove} "
  if valid_move?(board, theMove)
    move(board, theMove)
    display_board(board)
  else
    puts "invalid"
    turn(board)
    #puts "Sorry, invalid move"
  end

  #turn(board);
end

def valid_move?(board,position)
  position = position.to_i
  if position.between?(1,9)
    p = position - 1
    #puts "#{p} position"
    return !position_taken?(board, p)
  else
    return false
  end 

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  
  if board[position] == " " || board[position] == "" || !board[position]
    false
  else
    true
  end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(array, position, value="X")
  indx = position.to_i - 1
  array[indx] = value
end
