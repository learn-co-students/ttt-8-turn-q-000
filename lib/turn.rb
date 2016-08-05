def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(position)
  position.to_i - 1
end

def move(board, position, marker = "X")
  board[position] = marker
end 

def valid_move?(board, index)
  return false if board[index] == "X" || board[index] == "O"
  if 0 <= index && index <= board.size - 1 && board.all? {|marker| marker == " "}
    return true
  elsif 0 <= index && index <= board.size - 1
    return !!board[index]
  end
end

def position_taken?(board, index)
  return false if board[index] == " " || board[index] == "" || index == "" || board[index] == nil
  true if board[index] == "X" || board[index] == "O"
end

def turn(board)
  puts "Please enter 1-9:"
  position = input_to_index(gets.strip)

  while !valid_move?(board, position)
    puts "Please enter 1-9:"
    position = input_to_index(gets.strip)
  end

  board[position] = "X"
  display_board(board)
end
  
  

