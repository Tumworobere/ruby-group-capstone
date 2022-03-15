require_relative './item'
require_relative 'store'
require_relative 'creation'

class Main
  def initialize
    @items = Item.new('12 / 12 / 22')
  end

  def run
    puts '*************CATALOGUE OF MY THINGS************'
    puts '             =======================          '
    puts 'Welcome to Catalogue of thi!'
    loop do
      menu
      option = gets.chomp
      break if option == '14'
      list(option)
    end

    puts 'Thank you for using our Library!'
  end

  def menu
    puts
    puts 'Please choose an option by entering a number', '1 - List all books', '2 - List all music albums',
    '3 - List all movies', '4 - List all games', '5 - List all genre (eg.: Comedy, Thriller)',
    '6 - List all labels (eg.: Gift, New)', '7 - List all authors (e.g. Stephen King)', 
    "8 - List all sources (e.g. 'From a friend', 'Online shop')", '9 - List all labes', 
    '10 - Add a book', '11 - Add a music album', '12 - Add a movie', '13 - Add a game', 
    '14 - Exit'
  end

  def list(num)
    case num
    when 1
      list_books
    when 2
      
    when 3
      
    when 4
      
    when 5
      
    when 6
      list_labels
    when 7
    
    when 8
      
    when 9
      
    when 10
      add_book
    when 11
      
    when 12

    when 13
      add_label
    end
  end
end

execute_app = Main.new
execute_app.run
