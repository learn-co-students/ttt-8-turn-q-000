def display_board(board)
  output = ""
  board.each_with_index do |b, index|
    output << " #{b} "
    output << "|" unless (index + 1) % 3 == 0
    output << "\n-----------\n" if (index + 1) % 3 == 0
  end
  puts output
end

def position_taken?(board, position)
  pos = board[position]
  if pos.nil? || pos.strip.empty?
    false
  elsif pos == "X" || pos == "O"
    true
  end
end

def valid_move?(board, position)
  pos = position.to_i - 1
  return false if pos == -1 || board[pos].nil? || position_taken?(board, pos)
  true
end

def move(board, position, turn)
  board[position.to_i - 1] = turn
end

def turn(board)
  puts "Please enter 1-9:"
  turn = gets
  unless valid_move?(board, turn)
    turn = gets
  end
  move(board, turn, "X")
  display_board(board)
end
