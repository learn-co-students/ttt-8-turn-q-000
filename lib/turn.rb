def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
  position.to_i.between?(1, 9) && !position_taken?(board, position.to_i - 1)
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end


def move(board, position, character = "X")
  board[position.to_i-1] = character
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  until valid_move?(board, position) == true
    puts "Sorry, that's not a valid move."
    puts "Please enter 1-9 again:"
    position = gets.strip
  end

  move(board, position, character = "X")

  display_board(board)
end