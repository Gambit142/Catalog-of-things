module GenreUI
  def display_genre
    if @genres.length.zero?
      puts "\n"
      puts Rainbow('  No Genre registered yet!').red.bright.italic
      puts "\n"
    else
      puts Rainbow("  List of all Genres: \n").gold.bright.blink
      @genres.each_with_index do |genre, index|
        puts "\n"
        print Rainbow("  #{index + 1}) Genre:\n").purple.bright
        print Rainbow("  #{genre}\n").purple.bright
        print Rainbow('_________________________________________________').purple
        puts "\n"
      end
    end
  end
end
