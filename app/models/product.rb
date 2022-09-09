class Product < ApplicationRecord
  validates :name, :reference, :description, presence: true
end
