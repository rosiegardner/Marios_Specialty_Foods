require 'rails_helper'

describe "the delete a product process" do
  before(:each) do
    visit new_user_registration_path
    click_on "Sign Up!"
    fill_in "user_email", :with => "admin@epicodus.com"
    fill_in "user_password", :with => "epicodus123"
    fill_in "user_password_confirmation", :with => "epicodus123"
    click_on "Sign up"
    dumby_admin = User.where(:email => "admin@epicodus.com").update(:admin => true)
  end

  it "deletes a product" do
    new_product = Product.create({name: "Blood Orange", cost: 2, country_of_origin: "Southern Mediterranean"})
    new_product.save
    visit products_path
    click_on 'Blood Orange'
    click_on 'Delete'
    expect(page).to have_no_content 'Blood Orange'
  end
end