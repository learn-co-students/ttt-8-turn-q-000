def turn(board)
  puts "Please enter 1-9:"
  input = gets
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, position)
   if position.to_i.between?(1,9)
     if !position_taken?(board, position.to_i-1)
       true
     end
   end

   # position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
 end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else if board[position] == "X" || board[position] == "O"
    true
  end
  end
end





