# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :elements

  accepts_nested_attributes_for :elements, allow_destroy: true

  validates :title, presence: true, uniqueness: true
end
