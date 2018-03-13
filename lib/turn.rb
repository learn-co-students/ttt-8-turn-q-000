#!/usr/bin/env ruby
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip()
  valid = false
  while valid == false
    if valid_move?(board, position)
      move(board, position)
      valid = true
    else
      puts "Please enter 1-9:"
      position = gets.strip()
    end
  end
  display_board(board)
end

def valid_move?(board, position)
  int = (position.to_i - 1)
  query = board[int]
  if int.between?(0,9) && (query == "" || query ==" " || query == nil)
    true
  else
    false
  end
end

def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  11.times {print "-"}
  puts ""
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  11.times {print "-"}
  puts ""
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def move(board, position, char="X")
  place = position.to_i - 1
  board[place] = char
  display_board(board)
end
