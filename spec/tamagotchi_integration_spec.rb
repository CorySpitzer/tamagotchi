require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the tamagotchi path', :type => :feature) do
  it('responds to being fed') do
    visit('/')
    #save_and_open_page
    click_button('Feed')
    expect(page).to(have_content('Your Tamagotchi has 10 food in it'))
  end
end
