require 'spec_helper'
require './app/data_mapper_setup'

feature 'Viewing peeps' do

  scenario 'I can see existing peeps on the peep feed' do
    Peep.create(message: 'first peep!')
    visit '/peeps'
    expect(page.status_code).to eq 200
    within 'ul#peeps' do
      expect(page).to have_content('first peep!')
    end
  end

end
