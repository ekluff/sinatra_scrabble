require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('accepts a user-input String value and returns the scrabble score of the input word.') do
    visit('/')
    fill_in('word', :with => 'TacocaT')
    click_button('Scrabble me!')
    expect(page).to have_content('TacocaT is worth 11 points.')
  end
end
