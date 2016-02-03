#!/usr/bin/env ruby
 
def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
  if position.to_i.between?(1,9) == true && !position_taken?(board, position)
    true
  else
    false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if (board[position] == "X" || board[position] == "O")
  return true
  else ((board[position] == " " || board[position] == "") && (board[position] == ![0..8]))
    return false
  end
end


def move(board, position, value = "X")
  position = position.to_i
  board[position-1] = value
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if !position_taken?(board, position) && valid_move?(board, position)
    move(board, position, value = "X")
    display_board(board)
  else
    turn(board)
  end
end