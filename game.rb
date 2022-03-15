require './item.rb'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  private
    def can_be_archived?
     super && ( Time.now.year - @last_played_at.year > 2 )
    end
end
