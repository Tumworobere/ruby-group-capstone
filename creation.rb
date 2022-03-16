require './game'
require './store'

class Creation
  def self.success(item)
    puts "#{item} created succesfully!"
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
