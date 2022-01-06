require_relative '../classes/game'
require_relative '../classes/author'
require 'json'

module AuthorStorage
    def read_authors
        return unless File.exist?('./json/authors.json')
    
        file = File.read('./json/authors.json')
        file_data = JSON.parse(file)
        file_data.each do |author|
          author_instance = Author.new(author['title'], author['color'])
          @authors.push(author_instance)
        end
      end
end
