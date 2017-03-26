require 'rails_helper'

feature "Animals Search" do
  scenario "on Homepage without filters" do
    # Populate the database before access page
    create_list(:animal, 10)
    # Go to Homepage
    visit root_path
    # Fill the search form
    within("#search") do
      click_button 'Search'
    end
    # 101 it's because of the table headers that count as 1 tr too
    page.all('table.table tr').count.should eq 11
  end

  scenario "on Homepage with filters" do
    # Create the samples
    create_list(:animal, 10)
    create(:animal, name: 'Other')
    create(:animal, name: 'Another')
    # Go to Homepage
    visit root_path
    # Fill the search form
    within("#search") do
      fill_in 'Name of Animal or Owner', with: 'Other'
      click_button 'Search'
    end
    # 3 it's because of the table headers that count as 1 tr too
    # And now with Full-Text search the search is wider
    page.all('table.table tr').count.should eq 3
    # Check if the Other name appears on first row (just checking the return)
    page.all('table.table tr').map(&:text)[1].should include 'Other'
  end

  scenario "on animals#index without filters" do
    # Populate the database before access page
    create_list(:animal, 10)
    # Go to Homepage
    visit animals_path
    # Fill the search form
    within("#search") do
      click_button 'Search'
    end
    # 101 it's because of the table headers that count as 1 tr too
    page.all('table.table tr').count.should eq 11
  end

  scenario "on animals#index with filters" do
    # Create the samples
    create_list(:animal, 10)
    create(:animal, name: 'Other')
    create(:animal, name: 'Another')
    # Go to Homepage
    visit animals_path
    # Fill the search form
    within("#search") do
      fill_in 'Name of Animal or Owner', with: 'Other'
      click_button 'Search'
    end
    # 3 it's because of the table headers that count as 1 tr too
    # And now with Full-Text search the search is wider
    page.all('table.table tr').count.should eq 3
    # Check if the Other name appears on first row (just checking the return)
    page.all('table.table tr').map(&:text)[1].should include 'Other'
  end
end
