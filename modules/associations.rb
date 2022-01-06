require_relative '../classes/label'
require_relative '../classes/genre'
require_relative '../classes/author'

module Associations
  def add_label_info(item)
    print 'What is the label of the item?'
    print 'title:'
    title = gets.chomp

    print 'color:'
    color = gets.chomp

    label = Label.new(title, color)

    label.add_item(item)

    @labels << label
  end

  def add_genre_info(item)
    print 'What is the genre of the item?'
    print 'name:'
    genre_name = gets.chomp

    genre = Genre.new(genre_name)

    genre.add_item(item)

    @genre << genre
  end

  def add_author_info(item)
    print 'Who is the author of the item?'
    print 'first name :'
    first_name = gets.chomp

    print 'last name:'
    last_name = gets.chomp

    author = Author.new(first_name, last_name)

    author.add_item(item)

    @authors << author
  end
end
