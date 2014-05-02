class Usuario < ActiveRecord::Base
  attr_accessible :barrio_id, :descripcion, :email, :nombre, :username

  belongs_to :barrio
  has_many :comentarios
end
