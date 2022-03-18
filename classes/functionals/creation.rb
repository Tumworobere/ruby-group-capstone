require './classes/items/music_album'
require './classes/items/book'
require './classes/items/game'
require './classes/others/music_genre'
require './classes/others/label'
require './classes/functionals/store'

class Creation
  def self.success(item)
    puts "#{item} created succesfully!"
  end

  def self.add_music_album
    print 'Please, type the album name: '
    name = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    return unless publish_date

    print 'Has present in spotify? [Y/N]: '
    on_spotify = gets.chomp.downcase == 'y' || false

    music_album = MusicAlbum.new(name, publish_date, on_spotify)
    Store.push(music_album)
    success('Music album')
  end

  def self.add_book
    print 'Please, type the book publisher: '
    publisher = gets.chomp

    print 'Please, type the book cover state: '
    cover_state = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    return unless publish_date

    book = Book.new(publisher, cover_state, publish_date)
    Store.push(book)
    puts 'Book created successfully'
  end

  def self.add_label
    print 'Label Name: '
    title = gets.chomp
    print 'Label Color: '
    color = gets.chomp
    label = Label.new(title, color)
    Store.push(label)
    success('label')
  end

  def self.create_a_game
    print 'Multiplayer: '
    multiplayer = gets.chomp
    print 'Last playing Date (yyyy-mm-dd): '
    last_played_at = gets.chomp
    game = Game.new(multiplayer, last_played_at)
    Store.push(game)
    success('game')
  end
end
