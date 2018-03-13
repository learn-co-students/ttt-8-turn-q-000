def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, character = "X")
    display_board(board)
  else
    turn(board)
  end
end

def move(board, input, character = "X")
  input = input.to_i - 1
  board[input] = character
  return board
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if input.to_i.between?(1,9)
    if position_taken?(board, input)
      return false
    else
      return true
    end
  else return false
  end
end

def position_taken?(board, input)
  if board[input.to_i-1] == "X" or board[input.to_i-1] == "O"
    return true
  elsif board[input.to_i-1] == " " or board[input.to_i-1] == "" or board[input.to_i-1] == nil
    return false
  end
end