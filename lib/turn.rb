def turn(board)
        puts "Please enter 1-9:"
        position = gets.strip

        if valid_move?(board, position) == true
                move(board, position)
                display_board(board)


        else valid_move?(board, position) != true
                puts "The move is invalid. Please enter a move again:"
                turn(board)
        end
end

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, position)

        position = position.to_i-1


        if position >= 0 && position <= 8 && board[position] == " "
                return true

        else position_taken?(board, position) != false
                return false

        end

        end

def position_taken?(board, position)


        if board[position] == "X"
                return true
        elsif board[position] == "O"
                return true
        else board[position] == " " || board[position] == "" || board[position] == nil
                return false
        end

end

def move(board, position, character = "X")


  board[position.to_i-1] = character
  return board

end
