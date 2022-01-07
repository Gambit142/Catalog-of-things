module GenreUI
  def display_genre
    if @genres.length.zero?
      puts "\n"
      puts 'No Genre registered yet!'
      puts "\n"
    else
      puts "List of all Genres: \n"
      @genres.each_with_index do |genre, index|
      print "\n"
      print "#{index + 1}) Genre:\n"
      print "#{genre}\n"
      puts "_______________________________________"
      puts "\n"
      end
    end
  end
end
