def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

    if board.eql?([ 1, 2, 3, 4, 5, 6, 7, 8, 9 ])
        board = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ]
    end

    board
end

def turn(board, char = "X")
    begin
        puts "Please enter 1-9:"
        input = gets.strip.to_i
    end until input.between?(1, 9)

    if valid_move?(board, input.to_s)
        move(board, input, char)

        display_board(board)
    else
        puts "Invalid move.\nTry again."
        turn(board, char)
    end
end

def valid_move?(board, position)
    position = Integer(position) rescue nil
    position != nil  && position_empty?(board, position)
end

def position_empty?(board, position)
    pos = position.to_i
    pos -= 1

    board[pos] == " " || board[pos] == "" || board[pos] == nil
end

def move(board, input, char = "X")
    index = input.to_i
    index -= 1
    board[index] = char
end

def winner?(board)
    three_in_row = false

    top_row   = [ board[0], board[1], board[2] ]
    mid_row   = [ board[3], board[4], board[5] ]
    bot_row   = [ board[6], board[7], board[8] ]
    left_col  = [ board[0], board[3], board[6] ]
    cent_col  = [ board[1], board[4], board[7] ]
    right_col = [ board[2], board[5], board[8] ]
    diagnol1  = [ board[0], board[4], board[8] ]
    diagnol2  = [ board[2], board[4], board[6] ]    #.uniq.length == 1

    lines = [ top_row, mid_row, bot_row, diagnol1, left_col, cent_col, right_col, diagnol2 ]

    lines.each do |lin|
        lin.delete(" ")
        three_in_row = lin.size == 3 && lin.uniq.length == 1
        break if three_in_row
    end

    three_in_row
end