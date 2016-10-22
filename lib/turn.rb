def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
    return true 
  end
end
def position_taken?(board, position)
  if [" ", "", nil].include?(board[position])
    return false
  else ["X", "O"].include?(board[position])
    return true
  end
end

def move(board, input, player = "X")
  board[input .to_i - 1] = player 
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else 
    turn(board)
  end 
  display_board(board)
end











