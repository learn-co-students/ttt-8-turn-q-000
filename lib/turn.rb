def turn(board)
  puts "Please enter 1-9:"
  oriinput = gets.strip
  position = oriinput
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    puts "Spot taken, please re-enter a different spot."
    turn(board)
  end
end
 
def valid_move? (board, position)
    position = position.to_i
    if position == 0
      return false
    end

   if position > 9
      return false
    else
      answer = !position_taken?(board, position)
      return answer
    end
end
 
def position_taken? (board, position)
  position = position.to_i
    if ["X", "O"].include?(board[position - 1])
   return true
  elsif [" ", "", nil].include?(board[position - 1])
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board, position, token = "X")

    board[position.to_i - 1] = token
end










