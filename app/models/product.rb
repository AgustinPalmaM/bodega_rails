class Product < ApplicationRecord
  validates :name, :reference, :description, presence: true
  has_many :movements
end
