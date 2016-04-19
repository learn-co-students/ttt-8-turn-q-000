def turn(board)

  puts "Please enter 1-9:"

  position = gets.chomp

  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end

  display_board(board)

end

def display_board(board)
  puts(" #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} ")
  puts("-" * 11)
  puts(" #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} ")
  puts("-" * 11)
  puts(" #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} ")

end

def valid_move?(board, position)

  if position.to_i.between?(1, 9)
    if !position_taken?(board, position.to_i - 1)
      return true
    end
  end

  return false

end

def position_taken?(board, position)

   if board[position] == " " || board[position] == "" || board[position] == nil
     return false
   end

   if (board[position] == "X") || (board[position] == "O")
     return true
   end

end

def move(board, position, char = "X")

  board[position.to_i - 1] = char

end