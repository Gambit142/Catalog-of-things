module AuthorUI
  def display_authors
    if @authors.length.zero?
      puts 'No authors registered yet!'
    else

      puts "List of all Authors: \n"
      @authors.each_with_index do |author, _index|
        print "#{author.first_name.capitalize} "
        print "#{author.last_name.capitalize} "
        puts "\n"
      end
    end
  end
end
