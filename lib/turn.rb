def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  index = position.to_i-1
  if position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == false
    if index > 8 || index < 0
      return false
    else return true
    end
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end

def move(board, input, player = "X")
  board[input.to_i - 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else puts "Invalid move, please try again."
    position = gets.strip
  end
  display_board(board)
end