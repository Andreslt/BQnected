class Evento < ActiveRecord::Base
  attr_accessible :asistentes, :barrio, :descripcion, :fecha, :hora, :id, :locacion, :nombre, :tipo, :ubicacion
end
