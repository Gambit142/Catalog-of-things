require_relative 'item'

class Game < Item
    attr_accessor :multiplayer, :last_played_at

    def initialize(multiplayer,last_played_at,published_date)
        super(published_date)
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_archived?
        super || @last_played_at == 'bad'
    end
end

# game = Game.new('game_of_thrones','2021/12/12','2020/12/12')
# puts game.cover_state
# puts game.can_be_archived?