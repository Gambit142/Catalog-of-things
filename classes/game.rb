require_relative 'item'

class Game < Item
    attr_accessor :publisher, :cover_state

    def initialize(publisher,cover_state,published_date)
        super(published_date)
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archived?
        super || @cover_state == 'bad'
    end
end

# book = Book.new('houssam','bad','2020/12/12')
# puts book.cover_state
# puts book.can_be_archived?