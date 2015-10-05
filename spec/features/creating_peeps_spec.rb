require 'spec_helper'
require './app/data_mapper_setup'

feature 'Creating peeps' do

  scenario 'I can write a peep' do
    visit '/peeps/new'
    fill_in 'message', with: 'first peep!'
    click_button 'Send peep'

    expect(current_path).to eq '/peeps'

    within 'ul#peeps' do
      expect(page).to have_content('first peep!')
    end
  end

end
