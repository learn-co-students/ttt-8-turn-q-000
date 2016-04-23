def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, loc, char = "X")
  loc = loc.to_i - 1
  board[loc] = char
end

def valid_move?(board, loc)
  loc = loc.to_i
  if loc.between?(1,9) && !position_taken?(board, loc)
    true
  else
    false
  end
end

def position_taken?(board, loc)
  if board[loc-1] == " " || board[loc-1] == "" || board[loc-1] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  loc = gets.strip()
  while !valid_move?(board, loc)
    puts "Please enter 1-9 that has not been taken:"
    loc = gets.strip()
  end
  move(board, loc)
  display_board(board)
end