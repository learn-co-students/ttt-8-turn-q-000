board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end
def move(array,position, choice = "X")
  position = position.to_i
  array[position-1] = choice
  display_board(array)
end


def valid_move?(board,position)
  position = position.to_i
  position = position -1
  if position_taken?(board,position) == false && position.between?(0,8)
    true
  else
    false
  end

end# code your #valid_move? method here

def position_taken?(array,position)
  if array[position] == " "
    false
  elsif array[position] == ""
    false
  elsif array[position] == nil
    false
  else
    true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  truth = valid_move?(board,input)
  if truth == false
    puts "Sorry that input wasn't acceptable."
    turn(board)
  else
  puts input
  move(board,input)
  end

end


