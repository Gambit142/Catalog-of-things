require_relative 'item'
require 'date'

class Game < Item
    attr_accessor :multiplayer, :last_played_at

    def initialize(multiplayer, last_played_at, published_date)
        super(published_date)
        @multiplayer = multiplayer
        @last_played_at = Date.parse(last_played_at)
    end

    def can_be_archived?
        super && DateTime.now.year - @last_played_at.year > 2
    end
end

game = Game.new('game_of_thrones','2021/12/12','2020/12/12')
puts game.can_be_archived?