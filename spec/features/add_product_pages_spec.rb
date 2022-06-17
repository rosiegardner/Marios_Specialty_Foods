require 'rails_helper'

describe "the add a product process" do
  before(:each) do
    visit new_user_registration_path
    click_on "Sign Up!"
    fill_in "user_email", :with => "admin@epicodus.com"
    fill_in "user_password", :with => "epicodus123"
    fill_in "user_password_confirmation", :with => "epicodus123"
    click_on "Sign up"
    dumby_admin = User.where(:email => "admin@epicodus.com").update(:admin => true)
  end

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

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end