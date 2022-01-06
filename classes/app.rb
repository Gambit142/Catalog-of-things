require_relative '../modules/book_ui'
require_relative '../modules/label_ui'
require_relative '../modules/game_ui'
require_relative '../modules/author_ui'

class App
  include BookUI
  include LabelUI
  # include MusicAlbumUI
  # include GenreUI
  include GameUI
  include AuthorUI

  def initialize
    @books = []
    @labels = []
    @musicalbums = []
    @genre = []
    @games = []
    @authors = []
  end

  def menu
    puts 'Welcome to your Catalog of things!'
    puts "\n"
    puts 'Please choose an option by entering a number: '

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

  def homepage(input)
    case input
    when 1
      display_books
    when 3
      display_games
    when 5
      display_label
    when 6
      display_authors
    when 7
      create_book
    when 9
      create_game
    when 10
      puts 'Thanks for using our library app , hope to see you soon ! '
      exit
    else
      puts 'please Enter a valid number from 1 to 10'
    end
  end

  def run
    loop do
      homepage(menu)
    end
  end
end
