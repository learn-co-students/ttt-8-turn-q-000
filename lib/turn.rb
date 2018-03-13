def  display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, position)

  if position.to_i < 1 || position.to_i > 9
    puts "Please enter 1-9:"
    return false
  end

  place = position.to_i - 1

  if position_taken?(board, place) == false
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
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



def move(board, location, player = "X")
  return board[location.to_i - 1] = player
end



def turn(board)
  puts "Please enter 1-9:"
  user_Input = gets
  if valid_move?(board, user_Input) == false
    puts "Please enter 1-9:"
    turn(board)
  else
    move(board, user_Input)
    display_board(board)
  end
end