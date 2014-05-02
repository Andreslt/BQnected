class Evento < ActiveRecord::Base
  attr_accessible :asistentes, :barrio_id, :descripcion, :fecha, :hora, :nombre, :tipo, :ubicacion

  belongs_to :barrio
end
