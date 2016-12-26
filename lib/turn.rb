def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} \n ----------- \n #{board[3]} | #{board[4]} | #{board[5]}  \n ----------- \n #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
    if (board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O")
        return true
    else
        return false
    end
end

def valid_move?(board, position)
    if position.to_i.between?(1, 9) && !(position_taken?(board, position))
        return true
    else
        return false
    end
end

def move(board, position, turn="X")
#    if valid_move?(board, position) == true
        board[position.to_i - 1] = turn
        display_board(board)
#        return
#    else
#        puts "please verify move"
#        return
#    end
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.chomp
    if valid_move?(board, input)
        move(board, input)
    else
        turn(board)
    end
end
