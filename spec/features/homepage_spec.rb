require 'rails_helper'

feature "Homepage" do
  scenario "Enter homepage and see the welcome message" do
    visit root_path

    expect(page).to have_content 'An Example of PetShop store with animal search'
  end
end
