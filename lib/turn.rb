def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def valid_move? (board, position)
  position = position.to_i - 1
  if position_taken?(board, position) == true
    false
  elsif position >= 0 && position <= 8
    true
  else
    false
  end
end

def position_taken? (board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  else
    true
  end
end

def move (board, location, player = "X")
  puts display_board(board)
  board[location.to_i - 1] = player
  puts display_board(board) 
end

def turn (board)
  puts "Please enter 1-9:"
  position = gets.strip
  until valid_move?(board, position)
    puts "Please enter 1-9:"
    position = gets.strip
  end
  puts "Position #{position} is valid!"
  move(board, position, player = "X")
  display_board(board)
end