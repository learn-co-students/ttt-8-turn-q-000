def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    return true
  else
    return false
    end
end


def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) == true && position.between?(0,8) == true
  return true
  else
  return false
  end
end

def move(board, position, value = "X")
  position = position.to_i - 1
  board[position] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
until valid_move?(board, position) == true
puts "Please enter 1-9:"
position = gets.strip
end
  move(board, position, value = "X")
display_board(board)
end

def turn_count(board)
  count = board.select do |position|
    position = "X" || position = "O"
  end
  return count.length
end

def current_player
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end

def won?(board)
   WIN_COMBINATIONS.find do | win_combination |

     win_index_1 = win_combination[0]
     win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
     position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination
    else
      false
end
end
end


def full?(board)
  board.all? do |index|
    index == "X" ||index == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) == true || won?(board) == true || draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    nil
  end
end