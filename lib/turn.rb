board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
    puts  " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board,position)
    position.to_i.between?(1,9) and not position_taken?(board, position.to_i - 1)
end


def position_taken?(board, position)
    if board[position] == " " or board[position] == "" or board[position] == nil
        return false
    elsif position != "X" or position != "O"
        return true
    else
        return false
        
    end
    
end

def move(board, input, value = "X")
    board[input.to_i - 1] = value
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        puts display_board(board)
        else
        turn(board)
    end
end





