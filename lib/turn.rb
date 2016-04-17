def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
  else
    false
  end
end

def valid_move?(board, position)
  pos = position.to_i - 1
  !position_taken?(board, pos) && !board[pos].nil? && pos >= 0
end

def move(board, pos, sign = "X")
  board[pos - 1] = sign
  board
end

def turn(board)
  loop do
    puts 'Please enter 1-9:'
    position = gets.strip
    if valid_move?(board, position)
      move(board, position.to_i)
      display_board(board)
      break
    else
      puts "invalid"
    end
  end
end

