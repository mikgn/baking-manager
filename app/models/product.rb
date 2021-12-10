class Product < ApplicationRecord
  has_many :ingredients

  validates :title, presence: true, uniqueness: true
end
