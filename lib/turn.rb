def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

   def valid_move?(board, position)
    position = position.to_i
    position = position-1
    if position <0 || position >8
      false
    elsif board[position] == "X" || board[position] == "O"
      false
     
    elsif board[position] == " " || board[position] == ""
      true
    else
      true
    end

  end

  def move(board, position, token = "X")
        position = position.to_i
    position = position-1
    board[position] = token
    return board

  end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position)
    token = "X"
    move(board, position, token)
    display_board(board)
    return board
  else
    turn(board)
  end
end