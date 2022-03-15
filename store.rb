require 'json'
require './helper'

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

  def self.list_all_games
    Helper.create_file_if_not_exist('game.json')
    all_games = read_convert('game.json')
    all_games.each { |game| puts "Multiplayer: \"#{game['multiplayer']}\" Last playing date: #{game['last_played_at']}" }
  end
end