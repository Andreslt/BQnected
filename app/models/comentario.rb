class Comentario < ActiveRecord::Base
  attr_accessible :asistencia, :comentario, :evento_id, :nombre, :usuario_id

  belongs_to :evento
  belongs_to :usuario
end
