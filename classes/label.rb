
class Label
    attr_accessor :title, :color, :items

    def initialize(title,color)
        @id = Random.rand(1..1000)
        @title = title
        @color = color
        @items = []
    end
end