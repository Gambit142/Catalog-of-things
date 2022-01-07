require_relative '../modules/book_ui'
require_relative '../modules/label_ui'
require_relative '../modules/game_ui'
require_relative '../modules/author_ui'
require_relative '../modules/musicalbum_ui'
require_relative '../modules/genre_ui'
require_relative '../modules/book_storage'
require_relative '../modules/label_storage'
require_relative '../modules/musicalbum_storage'
require_relative '../modules/genre_storage'
require_relative '../modules/author_storage'
require_relative '../modules/game_storage'
require 'json'

class App
  include MusicAlbumUI
  include GenreUI
  include BookUI
  include LabelUI
  include GameUI
  include AuthorUI
  include BookStorage
  include LabelStorage
  include MusicAlbumStorage
  include GenreStorage
  include GameStorage
  include AuthorStorage

  def initialize
    @books = []
    @labels = []
    @musicalbums = []
    @genres = []
    @games = []
    @authors = []
  end

  def load_data
    read_games
    read_authors
    read_books
    read_labels
    read_musicalbums
    read_genres
  end

  def menu
    Dir.mkdir 'json' unless Dir.exist? 'json'
    puts "Welcome to your Catalog of things!\n"

    @options = {
      '1': 'List all books',
      '2': 'List all music albums',
      '3': 'List all games',
      '4': 'List all genres',
      '5': 'List all labels',
      '6': 'List all authors',
      '7': 'Add a book',
      '8': 'Add a music album',
      '9': 'Add a game',
      '10': 'Exit App'
    }

    @options.each do |index, string|
      puts "#{index} - #{string}"
    end
    print "\nEnter option from above list: "
    gets.chomp.to_i
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:disable Metrics/MethodLength

  def homepage(input)
    case input
    when 1
      display_books
    when 3
      display_games
    when 2
      display_musicalbum
    when 4
      display_genre
    when 5
      display_label
    when 6
      display_authors
    when 7
      create_book
    when 9
      create_game
    when 8
      create_musicalbum
    when 10
      puts 'Thanks for using our library app , hope to see you soon ! '
      exit
    else
      puts 'please Enter a valid number from 1 to 10'
    end
  end

  # rubocop:enable Metrics/CyclomaticComplexity

  def run
    loop do
      homepage(menu)
    end
  end

  # rubocop:enable Metrics/MethodLength
end
