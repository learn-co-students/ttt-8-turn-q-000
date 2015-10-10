def valid_move?(board, move)
  if (1..9).to_a.include?(move.to_i)
    return true if board[move.to_i - 1] == " "
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}    "
  puts "----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]}    "
  puts "----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]}    "
end

def position_taken?(board, position)
  return false if [nil, "", " "].include?(board[position])
  return true if board[position] == "X" || board[position] == "O"
end

def move(board, position, player_character='X')
  board[position.to_i - 1] = player_character
  board
end

def turn(board)
  begin
    puts "Please enter 1-9:"
    input = gets.strip
  end until valid_move?(board, input)
  move(board, input, 'X')
  display_board(board)
end