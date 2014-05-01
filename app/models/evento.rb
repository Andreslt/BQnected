class Evento < ActiveRecord::Base
  attr_accessible :asistentes, :barrio, :fecha, :nombre, :tipo, :ubicacion
end
