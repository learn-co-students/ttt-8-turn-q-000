def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  until valid_move?(board, input)
    puts "Please enter 1-9:"
    input = gets.strip
  end

  move(board, input)
  display_board(board)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, token = "X")
  index = position.to_i - 1
  board[index] = token
end

def valid_move?(board, position)
  index = position.to_i - 1

  if index > 8 || index < 0
    false
  else
    !position_taken?(board, index)
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end
