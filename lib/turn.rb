def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
   if !position_taken?(board, position) && position.to_i.between?(1, 9)
     return true
   end
  if position_taken?(board, position)
    return false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  end
  if board[position] == "X" || "O"
    return true
  end
end

def move(board, position, value = "X")
    board[position.to_i - 1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
  end
end

