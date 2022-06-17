require 'rails_helper'

describe "the edit a product process" do
  before(:each) do
    visit new_user_registration_path
    click_on "Sign Up!"
    fill_in "user_email", :with => "admin@epicodus.com"
    fill_in "user_password", :with => "epicodus123"
    fill_in "user_password_confirmation", :with => "epicodus123"
    click_on "Sign up"
    dumby_admin = User.where(:email => "admin@epicodus.com").update(:admin => true)
  end

  it "edits a new product" do
    new_product = Product.create({name: "Blood Orange", cost: 2, country_of_origin: "Southern Mediterranean"})
    new_product.save
    visit products_path
    click_on 'Blood Orange'
    click_on 'Edit'
    fill_in 'Name', :with => 'Blood Orange'
    fill_in 'Cost', :with => '4'
    fill_in 'Country of origin', :with => 'Southern Mediterranean'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
    expect(page).to have_content 'Blood Orange'
  end

end