def display_board(board)
    index = 0
    while index < 9
        puts " #{board[index]} | #{board[index+1]} | #{board[index+2]} "
        index += 3
        
        if index < 9
            puts "-----------"
        end
    end
end

def valid_move?(board, position)
    index = position.to_i - 1
    if position_taken?(board, index) || index < 0 || index > 8
        return false
    else
        return true
    end
    
end

def position_taken?(board, index)
    if board[index] == "X" || board[index] == "O"
        return true
    else
        return false
    end
end

def move(board, position, player = "X")
    index = position.to_i - 1
    board[index] = player
end

def turn(board)
    puts "Please enter 1-9:"
    position = gets
    
    if valid_move?(board, position)
        move(board, position)
        moved = true
        display_board(board)
    else
        puts "Invalid move."
        turn(board)
    end
    
    return board
end