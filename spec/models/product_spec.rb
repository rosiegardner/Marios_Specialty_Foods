require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }

  it("titleizes the name of a product") do
    product = Product.create({name: "blood orange", country_of_origin: "southern mediterranean"})
    expect(product.name()).to(eq("Blood Orange"))
  end
end