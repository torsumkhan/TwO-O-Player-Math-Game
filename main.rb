require "./player.rb"
require "./question.rb"
require "./game.rb"

def new_game

    p1 = Player.new(1)
    p2 = Player.new(2)
    game = Game.new(p1,p2)

    puts "Let's Start this Game!"

    while p1.score > 0 && ps.score > 0

        game.next_turn
        question = Question.new
        question.ask

        if question.mark == false && (game.turn % 2 == 0)
            p2.score -= 1
        elsif question.mark == false && (game.turn % 2 == 1)
            p1.score -= 1
        end

        puts game.current_score
    end

    game.ending_message
end

new_game