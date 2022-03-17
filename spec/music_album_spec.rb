require './music_album'

describe MusicAlbum do
  context 'When MusicAlbum is on_spotity to true' do
    music_album_one = MusicAlbum.new('name', '2021/1/19', true)
    it 'Should return an instance of the Class musicAlbum' do
      expect(music_album_one).to be_an_instance_of MusicAlbum
    end
  end

  context 'When MusicAlbum is on_spotity to false' do
    music_album_two = MusicAlbum.new('name', '2021/1/19', false)
    it 'Should return an instance of the Class musicAlbum' do
      expect(music_album_two).to be_an_instance_of MusicAlbum
    end
  end
end
