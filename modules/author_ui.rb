module AuthorUI
    def display_authors
      if @authors.length.zero?
        puts 'No authors registered yet!'
      else
  
        puts "List of all Authors: \n"
        @authors.each_with_index do |author, index|
          print "#{author.first_name} "
          print "#{author.last_name} "
          puts "\n"
        end
      end
    end
end
  