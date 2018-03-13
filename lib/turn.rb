board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player = "X")
    board[position.to_i - 1] = player
  display_board(board)
end
def position_taken?(board, position)
  if board[position.to_i - 1] == "O" || board[position.to_i - 1] == "X"
    return true
  else
    return false
  end
end

def valid_move?(board, position)# code your #valid_move? method here
  if position.to_i.between?(1,9) && !position_taken?(board, position)
    return true
  else
    return false
    end
end

def turn(board)
  puts "Please enter 1-9:"
  ans = gets.chomp
  if valid_move?(board, ans)
     move(board, ans)
 else
    turn(board)
 end
 end
