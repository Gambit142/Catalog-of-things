require_relative 'item'

class Author
    attr_accessor :first_name, :last_name, :items

    def initialize(first_name, last_name)
        @id = Random.rand(1..1000)
        @first_name = first_name
        @last_name = first_name
        @items = []
    end

    def add_item(item)
        if @items.include?(item)
            puts 'item already exists'
        else
            @items.push(item)
            item.author = self
        end
    end
end


# item1 = Item.new('2000/12/12')
# item2 = Item.new('2020/02/02')
# author = Author.new('Abdul', 'Duls')
# author.add_item(item1)
# author.add_item(item2)
# print author.items