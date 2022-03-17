require './music_genre'
require './item'

describe Genre do
  before :each do
    @new_genre = Genre.new('Comedy')
  end

  context 'It should create genre and add items' do
    it 'Should return an instance of Genre' do
      expect(@new_genre.name).to eq 'Comedy'
    end

    it 'should add the input item and yourself in Item class version to the collection of items' do
      @new_genre.add_item('2021/1/19')
      expect(@new_genre.items.length).to eq 2
    end
  end
end
