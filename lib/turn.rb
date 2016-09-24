
def display_board(status = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{status[0]} | #{status[1]} | #{status[2]} "
  puts "-----------"
  puts " #{status[3]} | #{status[4]} | #{status[5]} "
  puts "-----------"
  puts " #{status[6]} | #{status[7]} | #{status[8]} "
end

def valid_move?(board, position)
  if (position.to_i - 1).between?(0,8) == true && position_taken?(board, position.to_i) == false
    true
  end
end


def position_taken?(array, posi)
  if array[posi - 1] == " " || array[posi - 1] == "" || array[posi - 1] == nil
    false
  elsif array[posi - 1] == "X" || array[posi - 1] == "O"
    true
  end
end

def move(board, position, char = "X")

  def updated_board(array = [" ", " ", " ", " ", " ", " ", " ", " ", " "], position, char)
    array[position.to_i - 1] = char
  end

  updated_board(board, position, char)

end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position) == true
    move(board, position, char = "X")
  else
    turn(board)
  end

  display_board(board)
end

