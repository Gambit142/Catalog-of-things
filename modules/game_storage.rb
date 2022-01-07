require_relative '../classes/game'
require_relative '../classes/author'
require 'json'

module GameStorage
    def read_games
        return unless File.exist?('./json/games.json')
    
        file = File.read('./json/games.json')
        file_data = JSON.parse(file)
        file_data.each do |game|
          game_instance = Game.new(game['name'], game['multiplayer'], game['last_played_at'], game['published_date'])
          author_instance = Author.new(game['first_name'], game['last_name'])
          game_instance.label = author_instance
          @games.push(game_instance)
        end
      end

      def save_game
        File.write('./json/games.json', JSON.generate(@games), mode: 'w')
      end
end
