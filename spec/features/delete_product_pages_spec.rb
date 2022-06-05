require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    new_product = Product.create({name: "Blood Orange", cost: 2, country_of_origin: "Southern Mediterranean"})
    new_product.save
    visit products_path
    click_on 'Blood Orange'
    click_on 'Delete'
    expect(page).to have_no_content 'Blood Orange'
  end
end