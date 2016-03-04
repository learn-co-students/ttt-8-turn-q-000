def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  position = position.to_i-1
  position.between?(0,8) && !position_taken?(board,position)
end

def position_taken?(board,position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  else
    true
  end
end

def move(board,position,char="X")
  board[position.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
    if valid_move?(board,position) == false
      puts "Please enter 1-9:"
      postion = gets.strip
    else
      move(board,position,char="X")
      display_board(board)
    end
end