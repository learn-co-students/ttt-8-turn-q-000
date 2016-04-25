def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  position = position - 1

  if position.between?(0, 8) && !position_taken?(board, position)
      true
    else false
  end
end

# code your move method here!
def move(board, input, token = "X")
  
    input = input.to_i
    input = input - 1
    board[input] = token

end


def position_taken?(board, position)
   !(board[position] == "" || board[position] == " " || board[position] == nil)
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, token = "X")
    display_board(board)
  else
    puts "not a valid move or position taken.  Try again"
    turn(board)
  end  
end