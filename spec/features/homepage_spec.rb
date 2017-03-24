require 'rails_helper'

feature "Homepage" do
  scenario "Enter homepage and see the welcome message" do
    visit root_path

    within(".container") do
      expect(page).to have_content 'A Bootstrap Starter Template'
    end
  end
end