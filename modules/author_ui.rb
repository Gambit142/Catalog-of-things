module AuthorUI
  def display_authors
    if @authors.length.zero?
      puts "\n"
      puts Rainbow('  No authors registered yet!').red.bright.italic
      puts "\n"
    else

      puts Rainbow("  List of all Authors: \n").gold.bright.blink
      @authors.each_with_index do |author, index|
        puts "\n"
        print Rainbow("  #{index + 1}) Author:\n").purple.bright
        print Rainbow("  First Name: #{author.first_name.capitalize}, ").purple.bright
        print Rainbow("  Last Name: #{author.last_name.capitalize}, ").purple.bright
        puts "\n"
        print Rainbow('_______________________________________').purple
        puts "\n"
      end
    end
  end
end
