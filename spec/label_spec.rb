require_relative '../classes/label'
require 'date'
require_relative '../classes/item'

describe Label do
  context 'test class Label' do
    before(:all) do
      @new_label = Label.new('test_title', 'test_color')
      @new_item = Item.new('2020/12/12')
    end

    it 'new_label is instance of label' do
      expect(@new_label).to be_instance_of(Label)
    end

    it 'check for color' do
      expect(@new_label.color).to eql 'test_color'
    end

    it 'check for title' do
      expect(@new_label.title).to eql 'test_title'
    end

    it 'adds item correctly' do
      @new_label.add_item(@new_item)
      expect(@new_label.items).to include(@new_item)
    end
  end
end
