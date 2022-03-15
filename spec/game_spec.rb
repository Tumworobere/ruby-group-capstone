require_relative '../game'
require_relative '../item'
require 'date'


describe Game do
  before :each do
    @game = Game.new('Azeem', '2022/5/1')
  end

  context 'an instance of' do
    it 'the Game class' do
      expect(@game).to be_instance_of Game
    end
  end

  context 'have access to multiplayer' do
    it 'the multiplayer should be accessible' do
      expect(@game.multiplayer).to eq 'Azeem'
    end

    it 'should be able to write game multiplayer' do
      @game.multiplayer = 'Tumworobere'
      expect(@game.multiplayer).to eq 'Tumworobere'
    end
  end

  context 'have access to last_played_at' do
    it 'the type of last_played_at should be Date' do
      expect(@game.last_played_at).to eq Date.parse('2022/5/1')
    end

    it 'the type of last_played_at should be Date' do
      expect(@game.last_played_at.instance_of? Date).to eq true
    end

    it 'should be able to write last_played_at instance variable' do
      @game.last_played_at = '1990/1/9'
      expect(@game.last_played_at).to eq '1990/1/9'
    end
  end



  context 'mothods ' do
    it 'musnt have access for can_be_archived? method' do
      expect{ @author.id }.to raise_exception(NoMethodError)
    end
  end
end