def turn(board)
  token = "X"
  loop do
  puts "Please enter 1-9:"
  position = gets.strip
    if valid_move?(board, position)
       move(board, position, token)
       display_board(board)
    break
    end
  end
end

def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, position)
position = position.to_i - 1
  if !position.between?(0,8) || position_taken?(board, position)
    false
  else
    true
  end
end

def move(board, position, token)
  position = position.to_i - 1
  board[position] = token
  if token == "X"
    token = "O"
    elsif token == "O"
    token = "X"
    else
    token = "X"
  end
end

def position_taken?(board, position) #check if a position is occupied in its own method
  if board[position] == nil || board[position] == "" || board[position] == " "
    false
  elsif board[position] == "X" || board[position] == "O" || board[position] == "0"
    true
  end
end