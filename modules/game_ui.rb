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

  def display_games
    if @games.length.zero?
      puts 'No games added yet !'
    else
      puts 'List of all your games : \n'
      @games.each_with_index do |game, index|
        print "#{index + 1} game :"
        print "publisher: #{game.publisher}"
        print "publish date: #{game.published_date}"
        print "cover state: #{game.cover_state}"
      end

    end
  end

end
