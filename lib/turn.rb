def turn(board)
  puts "Please enter 1-9:"
  boolCheck = false
  while boolCheck == false
    user_input = gets.strip
    if valid_move?(board,user_input) == false
      puts "Not a valid choice. Please try again"
    else
      boolCheck = true
      move(board,user_input)
      display_board(board)
    end
  end
end

def valid_move?(board,user_input)
  user_input = user_input.to_i
  if user_input.between?(1,9) && position_taken?(board,user_input -1) == false
    return true
  else
    return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,user_input)
  if board[user_input] == " " || board[user_input] == "" || board[user_input] == nil
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

def move(board,user_input,user_char = "X")
  user_input = user_input.to_i
  user_input-=1
  board[user_input] = user_char
end