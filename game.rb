require './item.rb'

class Game < Item
  attr_accessor :multiplayer, :last_played_at
  def initialize(multiplayer, last_played_at)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

private
 def can_be_achived?
  true if Item.can_be_achived? && years_between_date(Time.now, @last_played_at) > 2
  false
 end

  def years_between_date(start_date, end_date)
    (start_date.to_i - end_date.to_i) / ( 24 * 60 * 60 * 365 )
  end
end