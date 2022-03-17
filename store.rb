require 'json'
require './helper'
require_relative './music_album'
require_relative './music_genre'

class Store

  def self.read_convert(filename)
    JSON.parse(File.read(filename))
  end

  def self.write_json(json_file_name, data)
    File.write(json_file_name, JSON.generate(data))
  end

  def self.push(item)
    case item.class.name
    when 'Game'
      Helper.create_file_if_not_exist('game.json')
      json_to_arr = read_convert('game.json')
      json_to_arr.push({ 'multiplayer' => item.multiplayer, 'last_played_at' => item.last_played_at })
      write_json('game.json', json_to_arr)
    end
  end

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

  def self.list_books
    Helper.create_file_if_not_exist('books.json')
    books = read_convert('books.json')
    puts 'There are no books yet! Please add books.' if books.empty?
    books.each do |book|
      puts "Title: #{book.name}, Publish Date: #{book.publish_date}, cover_state: #{book.cover_state}"
    end
  end

  def list_labels
    Helper.create_file_if_not_exist('labes.json')
    labels = read_convert('labes.json')
    puts 'There are no labels yet!' if @labels.empty?
    labels.each do |label|
      puts "Label name: #{label.title}"
    end
  end

  def self.push(item)
    case item.class.name
    when 'Game'
      Helper.create_file_if_not_exist('game.json')
      json_to_arr = read_convert('game.json')
      json_to_arr.push({ 'multiplayer' => item.multiplayer, 'last_played_at' => item.last_played_at })
      write_json('game.json', json_to_arr)
    end
  end

  def list_all_genres
    puts 'Genres'
    @genres.each do |genre|
      puts "Name: #{genre.name}"
    end
  end
    
  def self.list_all_games
    Helper.create_file_if_not_exist('game.json')
    all_games = read_convert('game.json')
    all_games.each do |game|
      puts "Multiplayer: \"#{game['multiplayer']}\" Last playing date: #{game['last_played_at']}"
    end
  end

  def self.list_all_authors
    Helper.create_file_if_not_exist('author.json')
    all_games = read_convert('author.json')
    all_games.each do |author|
      puts "#{author['first_name']} #{author['last_name']}"
    end
  end
end
