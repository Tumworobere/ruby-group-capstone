require './item.rb'

class Game < Item
  attr_accessor :multiplayer, :last_played_at
  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end
  def hey
    can_be_archived?
  end
private
 def can_be_archived?
  super && years_between_date(Time.now, @last_played_at) > 2
 end

  def years_between_date(start_date, end_date)
    (start_date.to_i - end_date.to_i) / ( 24 * 60 * 60 * 365 )
  end
end

noew = Game.new(true, "2018/1/1", "2022/1/1")
puts noew.hey