require_relative '../classes/author'
require_relative './associations'
require_relative '../classes/game'

module GameUI
  include Associations

  def create_game
    print 'Enter Published date in the format : yyyy-mm-dd :'
    published_date = gets.chomp

    print 'Enter last played at in the format : yyyy-mm-dd '
    last_played_at = gets.chomp

    print 'Multiplayer?  (y/n) '
    player_option = gets.chomp
    multiplayer = player_option == "y" || player_option == "Y"
    puts multiplayer
    created_game = Game.new(multiplayer, last_played_at, published_date)

    print 'Do you want to add author'
    author_option = gets.chomp
    add_author = author_option == 'y' || author_option == 'Y'
    puts add_author
    add_author_info(created_game) if add_author

    @games << created_game
    puts 'Game created successfully! '
  end

  def display_games
    if @games.length.zero?
      puts 'No games added yet !'
    else
      puts 'List of all your games : \n'
      @games.each_with_index do |game, index|
        print "#{index + 1} game : "
        print "publish date: #{game.published_date} "
        print "multiplayer state: #{game.multiplayer}"
      end
    end
  end
end
