class Item < ApplicationRecord
# FK
  belongs_to :category
  belongs_to :user, required: false

# Crear un scope sobre ítem 
# que nos permite devolver todos aquellos que tienen tamaño X (donde X es ingresado por el usuario).
	scope :size, ->(n) { where("size = ?", n) } 

# Crear un scope que devuelva los items que no tienen usuarios asignado.
	scope :user_id, -> { where(user_id: nil) }


end
