class Barrio < ActiveRecord::Base
  attr_accessible :locacion, :nombre

  has_many :eventos
end
