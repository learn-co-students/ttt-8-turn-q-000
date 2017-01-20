def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "\
       "\n-----------\n"\
       " #{board[3]} | #{board[4]} | #{board[5]} "\
       "\n-----------\n"\
       " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  board[position] == 'X' || board[position] == 'O'
end

def valid_move?(board, position)
  return false unless position.to_i.between?(1,9)
  pos = position.to_i - 1
  !position_taken?(board, pos)
end

def move(board, position, value='X')
  board[position.to_i - 1] = value
end

def turn(board)
  puts 'Please enter 1-9:'
  pos = gets.strip
  if valid_move?(board, pos)
    move(board, pos)
    display_board(board)
  else
    turn(board)
  end
end