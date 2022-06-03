class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :rating, presence: true
  validates :content_body, presence: true
  validates :content_body, length: { minimum: 50, maximum: 250 }
end