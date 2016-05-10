def turn(board)
  puts "Please enter 1-9:"

  position = gets.strip

  if valid_move?(board,position) == false
    puts "Invalid move!  Please enter another move."
    turn(board)
  else
    move(board, position, value = "X")
    display_board(board)
  end

end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, position)
  move = position.to_i-1

  if !position_taken?(board,move) && move.between?(0,8)
    true
  else
    false
  end
end



def position_taken?(board,position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def move(board, position, value = "X")
  board[position.to_i - 1] = value
end
