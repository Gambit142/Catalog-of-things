require 'date'
class Item
  attr_writer :genre, :source, :author, :label
  attr_reader :published_date, :archived, :id

  def initialize(published_date, archived: false)
    @id = Random.rand(1...1000)
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def can_be_archived?
    DateTime.now.year - @published_date.year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  def add_genre(genre)
    @genre = genre
  end
end

# item = Item.new('2000/12/12')
# # puts item.published_date
# # puts item.archived
# # puts item.id

# puts item.can_be_archived?
# puts item.archived
# item.move_to_archive
# puts item.archived

puts DateTime.now
