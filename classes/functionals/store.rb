require 'json'
require './classes/functionals/helper'

class Store
  def self.read_convert(filename)
    Helper.create_file_if_not_exist(filename)
    data = JSON.parse(File.read('./db/'+filename))
    filename_without_extension = filename.sub(/.json/,'')
    puts "There are no #{filename_without_extension} yet! Please add #{filename_without_extension}." if data.empty?
    data
  end

  def self.write_json(json_file_name, data)
    File.write(json_file_name, JSON.generate(data))
  end

  def self.push(item)
    case item.class.name
    when 'Game'
      data = { 'multiplayer' => item.multiplayer, 'last_played_at' => item.last_played_at }
      save_database('game.json', data)
    when 'Label'
      data = { 'title' => item.title, 'color' => item.color }
      save_database('labels.json', data)
    when 'Book'
      data = { 'publisher' => item.publisher, 'cover_state' => item.cover_state,
        'publish_date' => item.publish_date }
      save_database('books.json', data)
    when 'MusicAlbum'
      data = { 'name' => item.name, 'on_spotify' => item.on_spotify,
        'publish_date' => item.publish_date }
      save_database('music-albums.json', data)
    end
  end

  def self.list_books
    books = read_convert('books.json')
    books.each do |book|
      puts "Title: #{book['name']}, Publish Date: #{book['publish_date']}, cover_state: #{book['cover_state']}"
    end
  end

  def self.list_labels
    labels = read_convert('labels.json')
    labels.each do |label|
      puts "name: #{label['title']}, color: #{label['color']}"
    end
  end

  def self.list_all_games
    all_games = read_convert('game.json')
    all_games.each do |game|
      puts "Multiplayer: \"#{game['multiplayer']}\" Last playing date: #{game['last_played_at']}"
    end
  end

  def self.list_all_authors
    all_games = read_convert('author.json')
    all_games.each do |author|
      puts "#{author['first_name']} #{author['last_name']}"
    end
  end

  def self.list_all_genres
    genres = read_convert('genres.json')
    genres.each do |genre|
      puts "Name: #{genre.name}"
    end
  end

  def self.list_all_music_albums
    music_albums = read_convert('music-albums.json')
    music_albums.each do |music_album|
      puts "Name: #{music_album['name']}, Publish Date: #{music_album['publish_date']}, On Spotify: #{music_album['on_spotify']}"
    end
  end

  def self.save_database(filename, data)
    json_to_arr = read_convert(filename)
    json_to_arr.push(data)
    write_json('./db/'+filename, json_to_arr)
  end
end
