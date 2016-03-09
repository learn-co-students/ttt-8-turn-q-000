def turn(board)
  puts "Welcome to Tic Tac Toe!"
  puts "Please enter 1-9:"

  position = gets.strip

  while valid_move?(board,position) == false do
    position = gets.strip
  end
  position_taken?(board, position)
  display_board(board)
end

def display_board(board)

  $i=0
  $num=9
  board = [" #{board[0]} "," #{board[1]} "," #{board[2]} "," #{board[3]} "," #{board[4]} "," #{board[5]} "," #{board[6]} "," #{board[7]} "," #{board[8]} "]
  puts board[0]+"|"+board[1]+"|"+board[2]+"\n-----------\n"
  puts board[3]+"|"+board[4]+"|"+board[5]+"\n-----------\n"
  puts board[6]+"|"+board[7]+"|"+board[8]+"\n"


end
def valid_move?(board, position)
  if position.to_i.between?(1,9)  && !position_taken?(board,position)
      return true
  else
    return false
  end

end

def position_taken?(board,position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    return false
  else
    return true
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end