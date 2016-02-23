def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
    if valid_move?(board, input)
    move(board, input)
    display_board(board)
    else
    turn(board)
    end
end

def move(board, index, letter="X")
  index = index.to_i - 1
  board[index] = letter
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index = index.to_i - 1
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  end
  false
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    true
  end
end

