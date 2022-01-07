module AuthorUI
  def display_authors
    if @authors.length.zero?
      puts "\n"
      puts 'No authors registered yet!'
      puts "\n"
    else

      puts "List of all Authors: \n"
      @authors.each_with_index do |author, index|
        print "#{index + 1}) Author:\n"
        print "First Name: #{author.first_name.capitalize}, "
        print "Last Name: #{author.last_name.capitalize}, "
        puts "\n"
        puts '_______________________________________'
        puts "\n"
      end
    end
  end
end
