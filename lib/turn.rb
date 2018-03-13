def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  move = (input.to_i - 1)
  if move >= 0 && move <= 8
    position_taken?(board, move) ? false : true
  else
    false
  end
end

def position_taken?(board, move)
  sq = board[move]
  (sq == " " || sq == "" || sq == nil) ? (false) : (true)
end

def move(board, input, char="X")
  location = (input.to_i - 1)
  board[location] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  
  loop do
    if valid_move?(board, input)
      move(board, input, "X")
      break
    else
      puts "Sorry, you can't play there."
      input = gets.strip
    end
  end
  
  display_board(board)
end