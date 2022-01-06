require './classes/genre'

describe Genre do
    before(:each) do
      @genre1 = Genre.new('2000/10/03', on_spotify: true)

    end
  
    it 'should have its own attributes' do
      expect(@album1).to have_attributes(published_date: Date.parse('2000/10/03'))
      expect(@album1).to have_attributes(on_spotify: true)
      expect(@album2).to have_attributes(published_date: Date.parse('2019/10/03'))
      expect(@album2).to have_attributes(on_spotify: true)
    end
  
    it 'should print a string when the to_s function is called' do
      string1 = @album1.to_s
      string2 = @album2.to_s
      expect(string1).to eql "Music Album name: Roc Nation\npublished date: 2000-10-03\nHosted on Spotify: true"
      expect(string2).to eql "Music Album name: AfterMath\npublished date: 2019-10-03\nHosted on Spotify: true"
    end
  
    it 'should be archived if certain conditions are met' do
      expect(@album1.can_be_archived?).to eql true
      expect(@album2.can_be_archived?).to eql false
    end
  end
