class Barrio < ActiveRecord::Base
  attr_accessible :locacion, :nombre

  has_many :eventos
  has_many :usuarios
end
