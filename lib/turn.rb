def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def move(board, index, player = "X")
  board[index] = player
end

# code your input_to_index
def input_to_index(index)
  index = index.to_i - 1
end
#check to sse if the move is occupied and within range
def valid_move?(board, index)
  if index.between?(0,8)
    if !index_taken?(board, index)
      true
    end
  end
end

# re-define your #index_taken? method here, so that you can use it in the #valid_move? method above.
def index_taken?(board, index)
    board[index] != " "
  end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  valid = valid_move?(board, index)
  if valid == true
    move(board, index, "X")
    display_board(board)

  else
    puts "That space is taken or invalid input"
    display_board(board)
    turn(board)

  end

end
