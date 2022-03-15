require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date

  def initialize(publish_date)
    @id = rand(1..5000)
    @publish_date = Date.parse(publish_date)
    @archived = false
  end
  
  def add_genre(genre)
    @genre = genre
    genre.items << self
  end

  def add_source(source)
    @source = source
    source.items << self
  end

  def add_author(author)
    @author = author
    author.items << self
  end

  def add_label(label)
    @label = label
    label.items << self
  end

  def move_to_archive
    can_be_archived? && @archived = true
  end

  private

  def can_be_archived?
    Time.now.year - @publish_date.year > 10
  end  
end
