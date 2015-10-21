def turn(board)
  input = get_move
  until valid_move?(board, input) do
    input = get_move
  end
  move(board, input, "X")
  display_board(board)
end

def get_move
  puts "Please enter 1-9:"
  input = gets.strip.chomp
end

def valid_move?(board, position)
  position.to_i - 1 >= 0 && position.to_i - 1 <= 8 && !position_taken?(board, position.to_i - 1)
end

def position_taken?(board, position)
  !board[position].nil? && !board[position].empty? && !(board[position] == " ")
end

def move(board, move, code="X")
  board[move.to_i - 1] = code
end

def display_board(board)
  (0..2).each do |row|
    (0..2).each do |col|
      print " #{board[row * 3 + col]} #{'|' unless col == 2}"
    end
    puts
    puts "-" * 12 unless row == 2
  end
end