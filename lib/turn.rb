def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  if !position_taken?(board, position) && position.between?(0,8)
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input)
    move(board, input)
  else
    until valid_move?(board, input)
      puts "Please pick a number from 1-9:"
      input = gets.strip
    end
  end
  puts display_board(board)
end

