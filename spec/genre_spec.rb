require './classes/genre'
require './classes/book'

describe Genre do
  before(:each) do
    @genre = Genre.new('Hip-Hop')
    book = Book.new('Macmillian', 'Good', '2020-10-02')
    @genre.add_item(book)
  end

  it 'should have its own attributes' do
    expect(@genre).to have_attributes(name: 'Hip-Hop')
  end

  it 'should print a string when the to_s function is called' do
    string = @genre.to_s
    expect(string).to eql "Name of Genre: Hip-Hop, Genre Type: Book"
  end

  it 'should be an instance of Genre' do
    expect(@genre).to be_instance_of Genre
  end
end
