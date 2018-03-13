def display_board(board)
  #assumes 9-slot board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, slot)
  index = get_board_index(slot)
  value = board[index].strip
  if (value.nil? || value.empty?) && index.between?(0,board.size-1) 
    true
  else
    false
  end
end

def get_board_index(slot)
  (slot.to_i) - 1
end

def get_board_slot(index)
  (index.to_i) + 1
end

def move(board, slot, value = "X")
  if valid_move?(board, slot) && (value == "X" || value == "O")
    board[get_board_index(slot)] = value
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  slot = gets.strip
  if !move(board, slot)
    puts "invalid"
    puts "Please enter 1-9:"
    slot = gets.strip
    if !move(board, slot)
      puts "Failwhale :("
    end
  end
  display_board(board)
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
puts valid_move?(board, "1")