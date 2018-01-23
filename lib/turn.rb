def display_board(board)
  seperator_row = '-----------'
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts seperator_row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts seperator_row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
  return user_input
end

def valid_move?(board, index)
  if index < 9 && index >= 0 && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, player)
  board[index] = player
end

def turn(board)
  player_move = false

  until player_move == true
    puts "Please enter 1-9:"
    user_input = input_to_index(gets.strip)

    if valid_move?(board,user_input)
      move(board,user_input,"X")
      player_move = true
    else
      puts "Invalid Entry"
    end
  end

  display_board(board)

end
