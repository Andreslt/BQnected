class Evento < ActiveRecord::Base
  attr_accessible :asistentes, :barrio_id, :descripcion, :fecha, :hora, :nombre, :tipo, :ubicacion, :comentarios

  belongs_to :barrio
  has_many :comentarios
end
