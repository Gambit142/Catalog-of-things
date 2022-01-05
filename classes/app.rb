class App
    
    def menu
        puts 'Welcome to your Catalog of things!'
        puts "\n"
        puts 'Please choose an option by entering a number: '
    
        @options = {
          '1': 'List all books',
          '2': 'List all music albums',
          '3': 'List all movies',
          '4': 'List all games',
          '5': 'List all genres',
          '6': 'List all labels',
          '7': 'List all authors',
          '8': 'List all sources',
          '9': 'Add a book',
          '10': 'Add a music album',
          '11': 'Add a movie',
          '12': 'Add a game',
          '13': 'Exit App'
        }
    
        @options.each do |index, string|
          puts "#{index} - #{string}"
        end
        print "\nEnter option from above list: "
        gets.chomp.to_i
    end

    def homepage(input)
        case input
        when 13
          puts 'Thanks for using our library app , hope to see you soon ! '
          exit
        else
            puts 'please Enter a valid number from 1 to 13'
        end
    end

    def run
        loop do
            homepage(menu)
        end
    end
end