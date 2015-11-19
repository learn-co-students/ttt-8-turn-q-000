def valid_move?(board, pos)
  pos = pos.to_i - 1
  pos >= 0 && pos < 9 && !position_taken?(board,pos)
end

def position_taken?(board,pos)
  board[pos] == "X" || board[pos] == "O"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, pos, char = 'X')
  board[pos - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  until valid_move?(board, input) do 
    puts "Please enter 1-9:"
    input = gets.chomp
  end
  move(board, input.to_i)
  display_board(board)
end
