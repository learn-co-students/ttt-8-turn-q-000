def display_board(array)

  puts " #{array[0]} | #{array[1]} | #{array[2]}  "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]}  "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]}  "

end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position-1)
    false
  elsif position.between?(1,9) == false
    false
  else
    true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def move(array, loc, choice = "X")
  loc = loc.to_i
  array[loc-1] = choice
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    while (input.to_i).between?(1,9) == false
      puts "Please enter 1-9:"
      input = gets.strip
    end
  end
end

def turn_count(board)
  count = 0

  board.each do|position|
    if position == "X" || position == "O"
      count += 1
    end
  end
end