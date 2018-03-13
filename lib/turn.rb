def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board , input, player="X")
  board[input.to_i - 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
    if valid_move?(board, position)
      move(board,position)
      display_board(board)
    else !valid_move?(board, position)
      turn(board)
    end
end

def position_taken?(board, position)
  if (board[position] ==  " " || board[position] == "" || board[position] == nil)
    taken = false
  else 
    taken = true
  end
end

def valid_move?(board, position)
  position = position.to_i - 1
    if !position_taken?(board, position)  &&  position.between?(0,8)
      valid = true
    else
       valid = false
  end
end