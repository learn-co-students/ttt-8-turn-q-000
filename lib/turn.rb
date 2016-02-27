def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  position.between?(1,9) && !position_taken?(board, position)
end

def move(board, position, token="X")
  board[position.to_i - 1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp(" ")
  if valid_move?(board, position)
    move(board, position)
  else
    until valid_move?(board, position)
      puts "Please enter 1-9:"
      position = gets.chomp(" ")
    end
  end
  display_board(board)
end



# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  board[position - 1] == "X" || board[position - 1] == "O"
end
