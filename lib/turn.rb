def display_board(board = Array.new(9) {" "})
  bar = "-----------"
  start_inc = 0
  3.times do
    puts " #{board[start_inc]} | #{board[start_inc+1]} | #{board[start_inc+2]} "
    start_inc = start_inc + 3
    if start_inc < 9
      puts bar
    end
  end
  return
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    display_board(move(board, position))
  else
    turn(board)
  end
end


def valid_move?(board, position)
  position.to_i-1 <= board.length  && position.to_i-1 >= 0 && !position_taken?(board, position.to_i-1)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  board[position] == "X" || board[position] == "O"
end

def move(board, position, value='X')
  board[position.to_i-1] = value
  board
end

