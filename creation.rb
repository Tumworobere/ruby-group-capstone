require_relative './book'
require_relative './label'
require './game'
require './store'

class Creation
  def self.success(item)
    puts "#{item} created succesfully!"
  end

  def add_book
    print 'Please, type the book title: '
    title = gets.chomp

    print 'Please, type the book publisher: '
    publisher = gets.chomp

    print 'Please, type the book cover state: '
    cover_state = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    return unless publish_date

    @books.push(Book.new(title, publisher, cover_state, publish_date))
    puts 'Book created successfully'
  end

  def add_label
    print 'Create Label:'
    title = gets.chomp

    @labels.push(Label.new(title))
    puts 'Label created successfully'
  def self.create_a_game
    print 'multiplayer'
    multiplayer = gets.chomp
    print 'Last playing Date (yyyy/mm/dd): '
    last_played_at = gets.chomp
    game = Game.new(multiplayer, last_played_at)
    Store.push(game)
    success('game')
  end
end
