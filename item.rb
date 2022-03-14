class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :name
  attr_reader :id, :archived

  def initialize(genre, author, source, label, publish_date)
    @id = Math.rand(1..500)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @achived = false
  end

  def self.can_be_achived?

  end

  def move_to_achive

  end

end

