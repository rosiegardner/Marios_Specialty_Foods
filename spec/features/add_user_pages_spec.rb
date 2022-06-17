require 'rails_helper'

describe "#Users" do
  it "will let a user sign up" do
    visit new_user_registration_path
    click_on "Sign Up!"
    fill_in "user_email", :with => "user@epicodus.com"
    fill_in "user_password", :with => "epicodus123"
    fill_in "user_password_confirmation", :with => "epicodus123"
    click_on "Sign up"
    expect(page).to have_content "Welcome! You have signed up successfully"
  end

end
