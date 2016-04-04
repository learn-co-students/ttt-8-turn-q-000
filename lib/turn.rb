def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip

  until valid_move?(board, input)
    puts "Please enter 1-9:"
    input = gets.strip
  end

  move(board, input, "X")
  display_board(board)


end


def display_board(array)

  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "

end



def valid_move?(board, position)
  position = position.to_i - 1

  if position < 0 || position > 8
    return false
  end

  return !position_taken?(board, position)
end


def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end

end

def move(array, position, character = "X")
  array[position.to_i - 1] = character
end