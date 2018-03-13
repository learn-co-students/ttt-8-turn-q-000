def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(array, location, character="X")
  array[location.to_i-1]=character
end


def valid_move?(array, number)
  position = number.to_i - 1
  if position_taken?(array, position) == true
    false
  elsif position_taken?(array, position) == false
    if position.between?(0,8)
      true
    end
  end
end


def position_taken?(array, number)
  if array[number] == " "
    false
  elsif array[number] == nil
    false
  else
    true
  end
end


def turn(board)
    puts "Please enter 1-9:"
    input= gets.strip
  if valid_move?(board, input) == true
    move(board,input)
    puts display_board(board)
  else
    turn(board)
end
end