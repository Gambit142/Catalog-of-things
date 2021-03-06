require_relative './associations'
require_relative './musicalbum_storage'
require_relative './genre_storage'
require_relative './label_storage'
require_relative './author_storage'
require_relative '../classes/musicalbum'
require_relative '../classes/label'

module MusicAlbumUI
  include Associations
  include MusicAlbumStorage
  include GenreStorage
  include AuthorStorage
  include LabelStorage

  def create_musicalbum
    print '  What date was this album published? (yyyy/mm/dd) '
    date = gets.chomp

    print '  Is this album on spotify (Type true or false) '
    on_spotify = gets.chomp
    musicalbum = MusicAlbum.new(date, on_spotify: on_spotify)

    add_label_info(musicalbum)
    add_author_info(musicalbum)
    add_genre_info(musicalbum)

    @musicalbums << musicalbum
    save_album
    save_genre
    save_authors
    save_label
  
    puts "\n"
    puts Rainbow('  Music Album successfully added!').purple.bright.italic
    puts "\n"
  end

  def display_musicalbum
    puts "\n"
    if @musicalbums.length.zero?
      puts Rainbow('  No Music Album added yet!').red.bright.italic
      puts "\n"
    else
      puts Rainbow("  List of all your albums :\n").gold.bright.blink
      @musicalbums.each_with_index do |album, index|
        puts "\n"
        puts Rainbow("  #{index + 1}) Music Album:\n").purple.bright
        puts album
        puts "\n"
        print Rainbow('_________________________________________________________________________________').purple
        puts "\n"
      end
    end
  end
end
