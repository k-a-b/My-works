require 'spec_helper'

feature 'Visit main page' do

  describe 'Open main page', js: true do

    scenario 'user visit main page' do
      visit root_path
      expect(page).to have_content('Welcome to my firs project on RoR')
    end

  end
end