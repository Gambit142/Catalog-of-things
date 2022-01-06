class Genre
  attr_accessor :items

  def initialize(name)
    @name = name
    @id = rand 1..1000
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.add_genre(self)
  end

  def to_s
    "Name of Genre: #{@name}\n#{@items[0].class.name}"
  end
end
