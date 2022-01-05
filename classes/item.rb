require 'date'
class Item
    attr_writer :genre, :source, :author, :label
    attr_reader :published_date, :archived, :id

    def initialize(published_date, archived: false)
        @id = Random.rand(1...1000)
        @published_date = Date.parse(published_date)
        @archived = archived
    end
end
