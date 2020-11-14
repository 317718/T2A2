class Item < ApplicationRecord
  validates :price, numericality: {greater_than_or_equal_to: 1}
  validates :title, presence: true

  belongs_to :store
  belongs_to :category

  has_one_attached :image
end
