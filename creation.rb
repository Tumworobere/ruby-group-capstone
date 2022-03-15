require_relative './music_album'
require_relative './music_genre'

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
    end