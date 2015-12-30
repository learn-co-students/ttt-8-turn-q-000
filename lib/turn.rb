def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  pos = position.to_i
  if !pos.between?(1, 8)
    return false
  elsif position_taken?(board, pos - 1)
    return false
  else
    return true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == ""
    return false
  elsif !board[position]
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end

def move(board, pos, char="X")
  pos = pos.to_i - 1
  update_array_at_with(board, pos, char)
end

def update_array_at_with(board, position, value)
  board[position]=value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    #puts "Valid Move"
    move(board, position)
    display_board(board)
  else
    puts "Move Not Valid - Try Again"
    turn(board)
  end
end