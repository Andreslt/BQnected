class Alert < ActiveRecord::Base
  belongs_to :barrio
  attr_accessible :contenido, :tipo, :barrio_id
end
