
def valid_move?(board, position)
  if position_taken?(board, position) || position.to_i.between?(1, 9) == false
    false
  else
    true
  end
end

def position_taken?(board, position)
  board[position.to_i - 1] == "" || board[position.to_i - 1] == " " || board[position.to_i - 1] == nil ? false : true
end

def display_board(a)
  puts " #{a[0]} | #{a[1]} | #{a[2]} "
  puts "-----------"
  puts " #{a[3]} | #{a[4]} | #{a[5]} "
  puts "-----------"
  puts " #{a[6]} | #{a[7]} | #{a[8]} "
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position)
  else
    puts "invalid"
    turn(board)
  end
  display_board(board)
end

