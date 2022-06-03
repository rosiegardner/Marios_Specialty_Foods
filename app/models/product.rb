class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  validates :cost, presence: true
  validates :cost, numericality: { only_integer: true, greater_than: 0 }
  validates :country_of_origin, presence: true
  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end