def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position)
   else
    until valid_move?(board, position) == true
      puts "Please enter a valid number"
      puts "Please enter 1-9:"
      position = gets.strip
      valid_move?(board, position)
    end
    move(board, position)
  end
  display_board(board)
end

 def move(board, position, char = "X")
   position = position.to_i - 1
   board[position] = char
   return board
 end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && !position_taken?(board, position)
      true
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == "X" || board[position] == "0"
    true
  elsif board[position] == " " || board[position] == ""
    false
  else
    false
  end
end