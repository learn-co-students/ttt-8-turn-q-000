

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if (board[index] == "" && board[index] == " " && board[index] == nil)
    true
    else board[index] == ("X" || "O")
    false
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) && index.between(0, 8)
    valid_move = true
  else
    valid_move = false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, token = "X")
  elsif
    valid_move?(board, index) == false
    valid_move = false
    until valid_move == true
    puts "Input again"
    input = gets.strip
    input_to_index(input)
    valid_move?(board, index) == true
  end
      move(board, index, token = "X")
    end


end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end
