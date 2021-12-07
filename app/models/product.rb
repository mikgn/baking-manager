class Product < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :ingredients
end
