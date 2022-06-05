require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
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