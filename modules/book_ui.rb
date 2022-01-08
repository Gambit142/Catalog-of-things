require_relative '../classes/label'
require_relative './associations'
require_relative '../classes/book'
require_relative './label_ui'
require_relative './book_storage'
require_relative './label_storage'
require 'json'

module BookUI
  include Associations
  include LabelStorage
  include BookStorage
  include LabelUI

  def create_book
    print '  Published date: '
    published_date = gets.chomp

    print '  Publisher name: '
    publisher = gets.chomp

    print '  Cover State: '
    cover_state = gets.chomp
    created_book = Book.new(publisher, cover_state, published_date)

    add_label_info(created_book)
    add_author_info(created_book)
    add_genre_info(created_book)

    @books << created_book
    save_book
    save_label
    puts "\n"
    puts Rainbow('  Book successfully added!').purple.bright.italic
    puts "\n"
  end

  def display_books
    if @books.length.zero?
      puts "\n"
      puts Rainbow('  No books added yet!').red.bright.italic
    else
      puts "\n"
      puts Rainbow("  List of all your books : ").gold.bright.blink
      @books.each_with_index do |book, index|
        puts "\n"
        print Rainbow("  #{index + 1}) Book:\n").purple.bright
        print Rainbow("  Publisher: #{book.publisher},").purple.bright
        print Rainbow("  Publish date: #{book.published_date},").purple.bright
        print Rainbow("  Cover state: #{book.cover_state}.").purple.bright
        puts "\n"
        print Rainbow('_______________________________________________________________________').purple
        puts "\n"
      end

    end
  end
end
