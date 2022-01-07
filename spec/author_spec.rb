require_relative '../classes/author'
require 'date'
require_relative '../classes/item'

describe Author do
  context 'test class Author' do
    before(:all) do
      @new_author = Author.new('John', 'Doe')
      @new_item = Item.new('2020/12/12')
    end

    it 'new_author is instance of label' do
      expect(@new_author).to be_instance_of(Author)
    end

    it 'check for last name' do
      expect(@new_author.last_name).to eql 'Doe'
    end

    it 'check for first name' do
      expect(@new_author.first_name).to eql 'John'
    end

    it 'adds item correctly' do
      @new_author.add_item(@new_item)
      expect(@new_author.items).to include(@new_item)
    end
  end
end
