def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, value = "X")
    display_board(board)
  else
    until valid_move?(board, position) == true
      puts "Invalid move! Try again!"
      turn(board)
      break
    end
  end
end

# defining display_board method that takes board as an argument.

def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# defining valid_move? method that accepts a board and a position from the user.

def valid_move?(board, position)
  !position_taken?(board, position.to_i - 1) && position.to_i.between?(1, 9)
end

# defining move method that accepts a board, a position from the user and a toke to mark the position.

def move(board, position, value = "X")
  board[position.to_i - 1] = value
end

# defining position_taken? method

def position_taken?(board, position)
  if (board[position] == "X") || (board[position] == "O") ? true : false
    true
  else board[0 - 8] == " "
    false
  end
end