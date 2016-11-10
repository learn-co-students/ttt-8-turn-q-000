# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i  - 1
  if position_taken?(board, position) || invalid_position?(position)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i
  (board[position] == " " || board[position] == "" || board[position] == nil)?
  false: true
end

def invalid_position?(position)
  if position.between?(0,8)
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



def move(board, input, players_character = "X")
  input = input.to_i - 1
  board[input] = "#{players_character}"
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end


