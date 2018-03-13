def display_board(board = ["   ","   ","   ","   ","   ","   ","   ","   ","   ",])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if input.to_i.between?(1, 9) && position_taken?(board, input)
    return true
  else
    return false
  end
end

def position_taken?(board, input)
  (board[input.to_i-1] ==  " " || board[input.to_i-1] == "" || board[input.to_i-1] == nil) ?
    true : false
end

def move(board, input, token = "X")
  board[input-1] = token
end

def turn(board)
  input = 0
  until input.between?(1, 9)
    puts "Please enter 1-9:"
    input = gets.chomp.to_i
  end
  if valid_move?(board, input.to_s)
    move(board, input)
  end
  display_board(board)
end