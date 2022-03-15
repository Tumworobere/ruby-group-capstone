require 'json'
require_relative './music_album'
require_relative './music_genre'

class Store
    def list_all_music_album
        puts 'Music Albums'
        @music_albums.each do |music_album|
          puts "Name: #{music_album.name}, Publish Date: #{music_album.publish_date}, On Spotify: #{music_album.on_spotify}"
        end
      end

      def list_all_genres
        puts 'Genres'
        @genres.each do |genre|
          puts "Name: #{genre.name}"
        end
      end