
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if (valid_move?(board, input))
      move(board, input)
      display_board(board)
  else
    turn(board)

  end


end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if (!position_taken?(board, input) && input.to_i > 0 && input.to_i < 10 )
     return true
  else
    return false
  end
end

def move(board, position, player = 'X')
    board[(position.to_i) - 1] = player
end

def position_taken?(board, input)
  a = input.to_i - 1

  if(board[a] == " " || board[a] == "" || board[a] == nil )
    return false
  elsif (board[a] == "X" || board[a] == "O")
    return true
  end
end
