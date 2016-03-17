#display tic-tac-toe board
def display_board(display)
    puts " #{display[0]} | #{display[1]} | #{display[2]} "
    puts "------------"
    puts " #{display[3]} | #{display[4]} | #{display[5]} "
    puts "------------"
    puts " #{display[6]} | #{display[7]} | #{display[8]} "
end

#valid_move
def valid_move?(board, position)
    index = get_board_index(position)
    value = board[index].strip
    input = position.to_i - 1
    if !position_taken?(board, input) && input.between?(0,8)
        return true
    else
        return false
    end
end

#position_taken?
def position_taken?(board, position)
    if board[position] == "" || board[position] == " " || board[position] == nil
        return false
    else
        return true
    end
end

#convert position numbers into index numbers
def get_board_index(position)
    (position.to_i) - 1
end

#convert index numbers into position numbers
def get_board_position(index)
    (index.to_i) + 1
end

#make a move
def move(board, input, n = "X")
    if valid_move?(board, input) && (n == "X" || n == "O")
        board[get_board_index(input)] = n
        return true
    else
        return false
    end
end

#it's your turn: enter number from 1-9
def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    if !move(board, input)
        puts "Number is not valid"
        puts "Please enter 1-9:"
        input = gets.strip
            if !move(board, input)
                return puts "Please enter a valid number"
            end
    end
    display_board(board)
end