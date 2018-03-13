def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, pos, char = "X")
  board[pos.to_i-1] = char
end


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, pos)
  pos = pos.to_i-1
  if position_taken?(board, pos) == false
    if pos.between?(0, 8) 
      true
    else
      false  
    end
  else
    false
  end
end

def position_taken?(board, pos)
  if board[pos.to_i] == " " || board[pos.to_i] == "" || board[pos.to_i] == nil
    false
  elsif board[pos.to_i] == "X" || board[pos.to_i] == "O"
    true 
  end
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
    if !valid_move?(board, pos) 
      turn(board)
    else
      move(board, pos)
    end
  display_board(board)
end
