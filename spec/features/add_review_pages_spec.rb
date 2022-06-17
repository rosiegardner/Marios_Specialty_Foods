require 'rails_helper'

describe "the add a review process" do
  before(:each) do
    visit new_user_registration_path
    click_on "Sign Up!"
    fill_in "user_email", :with => "admin@epicodus.com"
    fill_in "user_password", :with => "epicodus123"
    fill_in "user_password_confirmation", :with => "epicodus123"
    click_on "Sign up"
  end
  
  it "adds a new review with no content" do
    new_product = Product.new({name: "Blood Orange", cost: 2, country_of_origin: "Southern Mediterranean"})
    new_product.save
    visit products_path
    click_on 'Blood Orange'
    click_on 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content "Author can't be blank"
    expect(page).to have_content "Rating can't be blank"
    expect(page).to have_content "Content body can't be blank"
    expect(page).to have_content "Content body is too short (minimum is 50 characters)"
  end
end
