module AuthorUI
    def display_authors
      if @authors.length.zero?
        puts 'No authors registered yet!'
      else
  
        puts "List of all Authors: \n"
        @authors.each_with_index do |author, index|
          print "#{index + 1} game :"
          print "title: #{author.title}"
          print "color: #{author.color}"
        end
      end
    end
end
  