def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, position, value)
  position = position.to_i - 1
  board[position] = value
end


def valid_move?(board, position)
  if position_taken?(board, position)
    return false
  else
    return true
  end
end


def position_taken?(board, position)
  position = position.to_i - 1
  if position.between?(0,8) && (board[position] == " " || board[position] == "") 
    return false
  elsif position.between?(0,8) && (board[position] == "O" || board[position] == "X")
    return true
  else
    return true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
      position = position.to_i - 1
      board[position] = "X"
      puts display_board(board)
  else
    while valid_move?(board, position)
    puts "Please provide a different position between 1-9:"
    end
    position = gets.strip
    position = position.to_i - 1
    board[position] = "X"
    puts display_board(board)
  end
else
  return true
end
