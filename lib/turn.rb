
# code your #valid_move? method here
def valid_move?(board,position)
  if !position.is_a? Integer
    if !position.match(/^\d$/)
      return false
    end
  end
  position = position.to_i
  if(position>=1 && position<=board.length && !position_taken?(board,position))
    return true
  end
  return false
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  if(board[position-1]=="X" || board[position-1]=="O")
    return true
  end
  return false
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player="X")
  position = position.to_i - 1
  board[position] = player
end

#This is how I had it coded at first.
#I think it works, but the test suite wouldn't cooperate.
#I tried to re-write the tests, but I couldn't get them to pass.
#
#
#def turn(board)
#  answer = ""
#  while !valid_move?(board, answer)
#    puts "Please enter 1-9:"
#    answer = gets.chomp
#  end
#  move(board, answer)
#  display_board(board)
#end

def turn(board)
  while true
    puts "Please enter 1-9:"
    answer = gets.chomp
    if(valid_move?(board, answer))
       move(board, answer)
       display_board(board)
       return
    end
  end
end
