require 'json'
require_relative '../classes/genre'

module GenreStorage
  def save_genre
    File.write('./json/genre.json', JSON.dump(@genres))
  end

  def read_genres
    return unless File.exist?('./json/genre.json')

    file = File.read('./json/genre.json')
    file_data = JSON.parse(file)
    file_data.each do |genre|
      genre_instance = Genre.new(genre['name'])
      @genres.push(genre_instance)
    end
  end
end
