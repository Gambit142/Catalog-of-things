require_relative '../classes/author'
require_relative './associations'
require_relative '../classes/game'

module GameUI
  include Associations

  def create_game
    print 'Published date:'
    published_date = gets.chomp

    print 'Enter last played at in the format : yyyy-mm-dd'
    last_played_at = gets.chomp

    print 'Multiplayer?  (y/n)'
    multiplayer = gets.chomp
    created_game = Game.new(multiplayer, last_played_at, published_date)

    add_label_info(created_game)
    add_author_info(created_game)
    add_genre_info(created_game)

    @games << created_game
    puts 'Game created successfully! '
  end

end
