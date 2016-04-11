def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  num = position.to_i
  num.between?(1, 10) && position_taken?(board, position) && num.to_s == position
end

def position_taken?(board, position)
  num = position.to_i
  board[num - 1] == " " || board[num - 1] == ""
end

def move(board, position, token = 'X')
  num = position.to_i
  board[num - 1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  
  if valid_move?(board, position)
      move(board, position)
      display_board(board)
      #turn(board)
    else 
      puts "#{position} is not a valid move."
      turn(board)
  end
end