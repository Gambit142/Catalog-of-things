require 'json'
require_relative '../classes/musicalbum'
require_relative '../classes/label'

module MusicAlbumStorage
    def read_musicalbums
        return unless File.exist?('./json/musicalbum.json')
        file = File.read('./json/musicalbum.json')
        file_data = JSON.parse(file)
        file_data.each do |album|
            album_instance = MusicAlbum.new(album['date'], on_spotify: album['on_spotify'])
            label_instance = Label.new(album['title'], album['color'])
            album_instance.label = label_instance
            @musicalbums.push(album_instance)
        end
    end

    def save_album
        File.write('./json/musicalbum.json', JSON.dump(@musicalbums))
    end
end