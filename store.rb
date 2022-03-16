require 'json'
require './helper'

class Store
  def self.read_convert(filename)
    JSON.parse(File.read(filename))
  end

  def self.write_json(json_file_name, data)
    File.write(json_file_name, JSON.generate(data))
  end

  def self.list_books
    Helper.create_file_if_not_exist('books.json')
    books = read_convert('books.json')
    puts 'There are no books yet! Please add books.' if @books.empty?
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
end
