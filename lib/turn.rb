def display_board(board)
  
  board.each_slice(3).to_a.each_with_index do |row, num|
    
    print(" #{row[0]} | #{row[1]} | #{row[2]} \n")

    if num < 2
      print("-" * 11 + "\n")
    end

  end

  return nil

end


# print display_board ["X", "X", "X", "X", "O", "O", "X", "O", "O"]





def input_to_index(index)
  index.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, board.length-1) && !['X', 'O'].include?(board[index])
    return true
  else
    return false
  end

end


def move(board, index, char="X")
  board[index] = char
end


def turn(board)
  puts("Please enter 1-9:")

  index = input_to_index(gets.chomp)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
  










