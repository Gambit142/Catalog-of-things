require 'json'
require_relative './associations'
require_relative '../classes/musicalbum'
require_relative '../classes/label'

module MusicAlbumUI
  include Associations

  def create_musicalbum
    print 'What date was this album published?'
    date = gets.chomp

    print 'Is this album on spotify (Type True or False)'
    on_spotify = gets.chomp
    musicalbum = MusicAlbum.new(date, on_spotify: on_spotify)

    add_label_info(musicalbum)
    add_author_info(musicalbum)
    add_genre_info(musicalbum)

    @musicalbums << musicalbum
    puts 'Music Album successfully added ! '
  end

  def display_musicalbum
    if @musicalbums.length.zero?
      puts 'No Music Album added yet !'
    else
      puts "List of all your albums :\n"
      @musicalbums.each_with_index do |album, index|
        puts "#{index + 1} Music Album :"
        puts album
      end
    end
  end
end
