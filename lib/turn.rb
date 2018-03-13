def valid_move?(board, position)
  converted = position.to_i - 1
  if converted.between?(0,8) && position_taken?(board, converted) == false
    true
  else
    false
  end
end

def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
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

def move(board, pos, char = "X")
   pos = pos.to_i - 1
   board[pos] = char
   return board
 end

def turn(board)
  puts "Please enter 1-9:"
  userinput = gets.strip
  integer = userinput.to_i - 1
  if valid_move?(board,userinput) == true
    move(board,userinput)
    display_board(board)
  else
    puts "Please re-enter input"
    turn(board)
  end
end