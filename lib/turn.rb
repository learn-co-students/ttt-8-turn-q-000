def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
     puts "invalid move"
     turn(board)
  end
end


def valid_move?(board, position)
  newinput = position.to_i - 1
  if newinput.between?(0, 8)
    if position_taken?(board, newinput)
      false
    else
      true
    end
  else
    false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  else
    true
  end
end

 def move(board, input, value = "X")
  newinput = input.to_i - 1
  board[newinput] = value
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

