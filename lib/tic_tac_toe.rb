class TicTacToe
attr_accessor :board, :input


    def initialize
        board = [" "," "," "," "," "," "," "," "," "]
        @board = board
    end

    WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
    ]

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
        input.to_i-1
    end


    def move(input,token) 
        @board[input] = token
    end

    def position_taken?(index)
        if (@board[index] == " ") || (@board[index] == "") || (@board[index] == nil)
        return false
        else
        return true  
        end 
    end

    def valid_move?(index)
        if index.between?(0,8) && !position_taken?(index)
        return true
        else
        return false 
        end
    end

    def turn_count
        count = 0
        @board.each do |p|
            count +=1 if p == "X" || p == "O"
        end
        count
    end

    def 


        if turn_count.even? 
            "X"
        else
            "O"
        end

    end
    
 # def turn
    #     input = gets.strip
    #     if input_to_index == true
    #         # valid_move?(index)
    #     else
    #         current_player
    #     end

    # end
   
end
