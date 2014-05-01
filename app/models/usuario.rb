class Usuario < ActiveRecord::Base
  attr_accessible :barrio, :descripcion, :email, :id, :nombre
end
