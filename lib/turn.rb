

def display_board(board)
  puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts ("-----------")
  puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts ("-----------")
  puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def valid_move?(board, position)
  if position_taken?(board, position) || position.to_i < 1 || position.to_i > 9
    false
  else position.to_i.between?(1,9)
    true
  end
end

def position_taken?(board, position)
   if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
  false
    else
    true
  end
end

def move (board, position, player_character = "X")
  board[position.to_i-1] = player_character
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, "X")
    display_board(board)
    return position
  else 
      position.to_i.between?(1,9) ==true
      turn(board) 
  end
end


