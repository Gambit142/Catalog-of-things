require_relative '../classes/author'
require_relative './associations'
require_relative '../classes/game'

module GameUI
  include Associations

  def create_game
    print 'Enter name of your game :'
    game_title = gets.chomp

    print 'Enter Published date in the format : yyyy-mm-dd :'
    published_date = gets.chomp

    print 'Enter last played at in the format : yyyy-mm-dd '
    last_played_at = gets.chomp

    print 'Is your game Multiplayer?  (y/n) '
    player_option = gets.chomp
    multiplayer = player_option == "y" || player_option == "Y"
    created_game = Game.new(game_title, multiplayer, last_played_at, published_date)

    add_author_info(created_game)
    add_genre_info(created_game)

    @games << created_game
    puts 'Game created successfully! '
  end

  def display_games
    if @games.length.zero?
      puts "No games added yet !"
    else
      puts "List of all your games : \n"
      @games.each_with_index do |game, index|
        print "#{index + 1}: "
        print "name: #{game.name}, "
        print "publish date: #{game.published_date}, "
        print "multiplayer : #{game.multiplayer},"
        puts "\n"
      end
    end
  end
end
