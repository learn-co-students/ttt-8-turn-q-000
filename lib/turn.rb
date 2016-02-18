#display_board method
def display_board(board)
   puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
   puts "-----------"
   puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
   puts "-----------"
   puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end
#position_taken? method
def position_taken?(board, position)
  position = position.to_i - 1

  if board[position] == " " || board[position] == "" || board[position] == nil
    true
  elsif ( board[position] == "X" || board[position] == "O" )
    false
  end
end
#valid_move method
def valid_move?(board, position)
    if position_taken?(board, position) == true && position.to_i.between?(1, 9)
       true
    elsif position_taken?(board, position) == false
       false
    end
end

#move method
def move( array, position, value = "X" )
    position = position.to_i
    array[position - 1] = value
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    puts "Please enter 1-9:"
    position = gets.strip
  end
  display_board(board)
end

