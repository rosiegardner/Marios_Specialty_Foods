class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  validates :cost, presence: true
  validates :cost, numericality: { only_integer: true, greater_than: 0 }
  validates :country_of_origin, presence: true
  before_save(:titleize_product)

  scope :most_reviewed, -> {(select("products.id, products.name, products.cost, count(reviews.id) as reviews_count").joins(:reviews).group("products.id").order("reviews_count DESC").limit(1))}
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  private
    def titleize_product
      self.name = self.name.titleize
    end
end