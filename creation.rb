require_relative './music_album'
require_relative './music_genre'
require_relative './book'
require_relative './label'
require './game'
require './store'

class Creation
  def add_music_album
    print 'Please, type the album name: '
    name = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = get_date_from_user(gets.chomp)
    return unless publish_date

    print 'Has present in spotify? [Y/N]: '
    on_spotify = gets.chomp.downcase == 'y' || false

    @music_albums << MusicAlbum.new(name, publish_date, on_spotify)
    puts 'Album created successfully'
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
  end

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
