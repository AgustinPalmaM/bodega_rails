class Movement < ApplicationRecord
  belongs_to :product
  MOVEMENT_TYPES = {
    add: 0,
    remove: 1
  }

  def self.get_movement_types
    {
      'Agregar producto' => MOVEMENT_TYPES[:add], 
      'Quitar producto' => MOVEMENT_TYPES[:remove]
    }
  end

  def movement_type_name
    return 'Agregar' if movement_type == MOVEMENT_TYPES[:add]
    return 'Quitar' if movement_type == MOVEMENT_TYPES[:remove]
  end

  validates :quantity, presence: true, numericality: true
end
