require 'json'

module GenreUI
    def display_genre
      if @genres.length.zero?
        puts 'No Genre registered yet!'
      else

        puts "List of all Genres: \n"
        @genres.each_with_index do |genre, index|
          puts "#{index + 1}) Genre : #{genre}"
        end
      end
    end
end