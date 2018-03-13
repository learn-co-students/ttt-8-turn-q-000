
def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board, position, player = 'X')
  board[position.to_i-1] = player
end

def valid_move? (board, num)
  index = num.to_i - 1

  if index.between?(0,8) && !position_taken?(board,index)
    true
  else
    false
  end
end

def position_taken? (board, index)
  if board[index] == ' ' || board[index] =='' || board[index] == nil
    false
  elsif board[index] == 'X' || board[index] =='O'
    true
  else
    nil
  end 
end