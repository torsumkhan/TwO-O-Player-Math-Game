class game
    attr_accessor :p1, :p2, :turn

    def initialize(p1, p2)
        @p1 = p1
        @p2 = p2
        @turn = 0
    end

    def new_turn
        @turn += 1

        if(@turn % 2 == 0)
            puts "Player 2's Turn"
        else 
            puts "Player 1's Turn"
        end
    end

    def current_score
        puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3"
    end

    def ending_message
        if p1.score == 0
            puts "Player 2 is the winner"
        elsif p2.score == 0
            puts "Player 1 is the winner"
        end

        puts "Game Over!"
    end
end
