require_relative '../classes/game'
require_relative '../classes/item'
require 'date'

describe Game do
  context 'testing game class' do
    before(:all) do
      @game = Game.new('Clash of Clans', true, '2021/12/12', '2020/12/12')
      @item = Item.new('2020/12/12')
    end

    it 'should be an instance of Game' do
      expect(@game).to be_instance_of(Game)
    end

    it 'should be an instance of Item' do
      expect(@game).to be_kind_of(Item)
    end

    it 'correct publisher / cover state / published date' do
      expect(@game.name).to eql 'Clash of Clans'
      expect(@game.multiplayer).to be true
      expect(@game.published_date).to eql Date.parse('2020/12/12')
      expect(@game.last_played_at).to eql Date.parse('2021/12/12')
    end

    it 'can_be_archived? method works accordingly' do
      expect(@game.can_be_archived?).to be false
    end
  end
end
