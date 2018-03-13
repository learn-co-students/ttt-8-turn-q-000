
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)

    if position_taken?(board, index)
        false
    elsif !index.between?(0, 8)
        false
    else
        true
    end

    #puts position_taken?(board, index)
end

def position_taken?(board, index)
    if board[index] == " "
        false
    elsif board[index] == ""
        false
    elsif board[index] == nil
        false
    elsif !board[index] == 'X' || !board[index] == "O"
        false
    else
        true
    end
end

def input_to_index(input)
    index = input.to_i - 1
end

def move(board, index, token="X")
  board[index] = token
  board
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    #while valid_move?(board, index)
    if valid_move?(board, index)
          move(board, index, "X")
          display_board(board)
          #puts "Please enter 1-9:"
          #input = gets.strip
          #index = input_to_index(input)
    else
      turn(board)
    end

end
