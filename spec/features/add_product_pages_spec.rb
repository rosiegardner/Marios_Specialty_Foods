require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Blood Orange'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of origin', :with => 'Southern Mediterranean'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Blood Orange'
  end
end