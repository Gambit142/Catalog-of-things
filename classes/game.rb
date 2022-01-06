require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :name

  def initialize(name, multiplayer = false, last_played_at, published_date)
    super(published_date)
    @name = name
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  def can_be_archived?
    super && DateTime.now.year - @last_played_at.year > 2
  end
end
