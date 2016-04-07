def turn(board)
  #prompt user for move between 1-9
  puts "Please enter 1-9:"

  #read the input
  letter  = "X"
  pos = gets.strip

  #if valid then make the move
  if valid_move? board, pos 
    move board, pos.to_i, letter
    display_board(board)
  else turn board
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

  def move board, position, letter
    board[position - 1] = letter
  end

  def valid_move?(board, pos)
    pos = pos.to_i - 1
    pos >=0 && (pos < board.size) && !(position_taken? board, pos) 
  end

  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken? board, pos
     (board[pos].nil?  || board[pos] == "" || board[pos] == " ") ? false : true
  end
