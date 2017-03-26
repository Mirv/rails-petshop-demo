require 'rails_helper'

feature "Animals#index Page" do
  scenario "without any animals or filters" do
    visit animals_path

    expect(page).to have_content "We haven't found any results for your Search."
  end

  scenario "with animals and without filters" do
    # Populate the database before access page
    create_list(:animal, 100)
    visit animals_path
    # 101 it's because of the table headers that count as 1 tr too
    page.all('table.table tr').count.should == 21
  end
end
