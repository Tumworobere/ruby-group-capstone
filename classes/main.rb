require './classes/items/item'
require './classes/functionals/store'
require './classes/functionals/creation'

class Main
  def initialize
    @items = Item.new('12 / 12 / 22')
  end

  def run
    puts '*************CATALOGUE OF MY THINGS************'
    puts '             =======================          '
    puts 'Welcome to Catalogue of things!'
    loop do
      menu
      option = gets.chomp
      break if option == '11'

      list(option)
    end

    puts 'Thank you for using our Library!'
  end

  def menu
    puts
    puts 'Please choose an option by entering a number',
         '1 - List all books', '2 - List all music albums', '3 - List all games',
         '4 - List all genre (eg.: Comedy, Thriller)', '5 - List all labels (eg.: Gift, New)',
         '6 - List all authors (e.g. Stephen King)',
         '7 - Add a label', '8 - Add a book', '9 - Add a music album', '10 - Add a game',
         '11 - Exit'
  end

  def list(num)
    case num.to_i
    when 1
      Store.list_books
    when 2
      Store.list_all_music_albums
    when 3
      Store.list_all_games
    when 4
      Store.list_all_genres
    when 5
      Store.list_labels
    else
      second_list(num)
    end
  end

  def second_list(num)
    case num.to_i
    when 6
      Store.list_all_authors
    when 7
      Creation.add_label
    when 8
      Creation.add_book
    when 9
      Creation.add_music_album
    when 10
      Creation.create_a_game
    end
  end

  def third_list(num)
    case num.to_i
    when 9
    when 10
    when 11
      puts '11 your methods'
    when 12
      puts '12 your methods'
    when 13
    end
  end
end

execute_app = Main.new
execute_app.run
