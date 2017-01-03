#display_board
def display_board(board)
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end


#valid_move?
def valid_move?(board,position)
  if position =~ /[[:digit:]]/ #is position letter/number?
    position = position.to_i #convert string to integer
 
    if position >= 0 and position < 9 #check for legal position
      if board[position-1].strip.empty?
        return true
      else
        return false #position is occupied
      end
    else
      return false #illegal position
    end
  else
    return nil
  end
end


#move
def move(board,position,letter)
  board[position-1]=letter
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  position = gets
  letter = "X"

  if valid_move?(board,position)
    position = position.to_i
    move(board,position,letter)
    display_board(board)
  elsif valid_move?(board,position) == false
    turn(board)
  elsif valid_move?(board,position) == nil
    turn(board)
  end

end
