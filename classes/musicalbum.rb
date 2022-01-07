require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(published_date, on_spotify: true, archived: false)
    super(published_date, archived: archived)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end

  def to_s
    "Music Album Name: #{@label.title}, Published Date: #{@published_date}, Hosted on Spotify: #{@on_spotify}."
  end

  def to_json(json)
    json.generate({
                    date: @published_date,
                    on_spotify: @on_spotify,
                    title: @label.title,
                    color: @label.color
                  })
  end
end
