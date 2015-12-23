def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if !position_taken?(board, position.to_i - 1) && (position.to_i - 1).between?(0, 9)
    return true
  else
    return false
 end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  else
  end
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char
end

def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  input = gets.strip
   if valid_move?(board, input) == true
      move(board, input)
      display_board(board)
   else
      puts "Sorry, that is not a valid move."
      turn(board)
  end
end