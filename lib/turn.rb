def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  position = pos.to_i
  if position <= 9 && position > 0
    if "#{true if board[position - 1] == "X" || board[position - 1] == "O"}" == "true"
      false
    else
      true
    end
  else
    false
  end
end

def move(board, pos, player="X")
  if valid_move?(board, pos)
    board[pos.to_i - 1] = player
    display_board(board)
  else
    puts "You have selected an invalid move, please make an input of 1-9!"
    u_choice = gets.strip
    move(board, u_choice)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  move(board, choice)
end