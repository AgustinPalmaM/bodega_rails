class Product < ApplicationRecord
  validates :name, :reference, :description, presence: true
  has_many :movements

  def quantity_stock
    total = 0
    movements.each do |movement|
      if movement.movement_type == Movement::MOVEMENT_TYPES[:add]
        total += movement.quantity
      else
        total -= movement.quantity
      end
    end
    total
  end
end
